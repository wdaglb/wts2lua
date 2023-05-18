const esprima = require('esprima')
const fs = require('fs')
const path = require('path')
const arrayParse = require('./src/array')

const AST = {
    Program: 'Program',
    Identifier: 'Identifier',
    Literal: 'Literal',
    Property: 'Property',
    AssignmentPattern: 'AssignmentPattern',
    AssignmentExpression: 'AssignmentExpression',
    VariableDeclaration: 'VariableDeclaration',
    ArrowFunctionExpression: 'ArrowFunctionExpression',
    FunctionExpression: 'FunctionExpression',
    FunctionDeclaration: 'FunctionDeclaration',
    ExpressionStatement: 'ExpressionStatement',
    MemberExpression: 'MemberExpression',
    ArrayExpression: 'ArrayExpression',
    ClassDeclaration: 'ClassDeclaration',
    MethodDefinition: 'MethodDefinition',
    ThisExpression: 'ThisExpression',
    UpdateExpression: 'UpdateExpression',
    BinaryExpression: 'BinaryExpression',
    CallExpression: 'CallExpression',
    NewExpression: 'NewExpression',
    ReturnStatement: 'ReturnStatement',
    BlockStatement: 'BlockStatement',
    UnaryExpression: 'UnaryExpression',
    ObjectExpression: 'ObjectExpression',
}
const KIND = {
    const: 'const',
}

// lua抽象树
class LuaAst {
    start = []
    codes = []
    _libs = []
    constructor() {
    }

    addStart (code) {
        this.start.push(code)
    }

    /**
     * 添加代码.
     * @param code
     */
    push (code) {
        this.codes.push(code)
    }

    /**
     * 加载lua包.
     */
    loadLib (file, name) {
        if (this._libs.includes(file)) {
            return
        }
        this._libs.push(file)
        const requireStr = `require("lua_lib.${file}")`
        if (name) {
            this.codes.unshift(`local ${name} = ${requireStr}`)
        } else {
            this.codes.unshift(`${requireStr}`)
        }
    }

    toString () {
        let pre = ""
        if (this.start.length) {
            pre = this.start.join("\r\n") + "\r\n"
        }
        return pre + this.codes.join("\r\n")
    }
}

class Js2Ast {
    luaAST;

    // 别名组
    _def_name_alias = {};
    // 是否有使用class
    _use_class = false;
    // 数据类型
    _var_types = {};

    constructor(code) {
        this.luaAST = new LuaAst()
        const nodes = esprima.parseScript(code)
        if (nodes.type === AST.Program) {
            this._parsePrograms(nodes.body)
        }
    }

    _parsePrograms (programs, options) {
        programs.forEach(ast => {
            this.luaAST.push(this._parseKind(ast, options))
        })
    }

    _get_name (name) {
        return name
    }

    _set_name (type, name) {
        // const aliasName = `__${type}_${name}`
        // this._def_name_alias[name] = aliasName
        return name
    }

    _parseKind (ast, options) {
        let res
        switch (ast.type) {
            case AST.VariableDeclaration:
                res = this._parseKingConst(ast.declarations)
                break;
            case AST.Identifier:
                res = this._parseKingIdentifier(ast, options)
                break;
            case AST.Literal:
                res = this._parseKingLiteral(ast, options)
                break;
            case AST.Property:
                res = this._parseKingProperty(ast, options)
                break;
            case AST.AssignmentPattern:
                res = this._parseKingAssignmentPattern(ast, options)
                break;
            case AST.AssignmentExpression:
                res = this._parseKingAssignmentExpression(ast, options)
                break;
            case AST.ArrowFunctionExpression:
                res = this._parseKingArrowFunctionExpression(ast, options)
                break;
            case AST.FunctionExpression:
                res = this._parseKingFunctionExpression(ast, options)
                break;
            case AST.FunctionDeclaration:
                res = this._parseKingFunctionDeclaration(ast, options)
                break;
            case AST.ClassDeclaration:
                res = this._parseKingClassDeclaration(ast, options)
                break;
            case AST.MethodDefinition:
                res = this._parseKingMethodDeclaration(ast, options)
                break;
            case AST.ThisExpression:
                res = this._parseKingThisDeclaration(ast, options)
                break;
            case AST.UpdateExpression:
                res = this._parseKingUpdateExpression(ast, options)
                break;
            case AST.BinaryExpression:
                res = this._parseKingBinaryExpression(ast, options)
                break;
            case AST.CallExpression:
                res = this._parseKingCallExpression(ast, options)
                break;
            case AST.NewExpression:
                res = this._parseKingNewExpression(ast, options)
                break;
            case AST.ReturnStatement:
                res = this._parseKingReturnStatement(ast, options)
                break;
            case AST.BlockStatement:
                res = this._parseKingBlockStatement(ast, options)
                break;
            case AST.UnaryExpression:
                res = this._parseKingUnaryExpression(ast, options)
                break;
            case AST.ObjectExpression:
                res = this._parseKingObjectExpression(ast, options)
                break;
            case AST.ExpressionStatement:
                res = this._parseKingExpressionStatement(ast.expression, options)
                break;
            case AST.MemberExpression:
                res = this._parseKingMemberExpression(ast, options)
                break;
            case AST.ArrayExpression:
                res = this._parseKingArrayExpression(ast, options)
                break;
            default:
                console.warn(ast)
                break;
        }
        return res
    }

    // 常量解析
    _parseKingConst (declarations, options) {
        const ast = new LuaAst()
        declarations.forEach(declaration => {
            const constName = this._set_name('const', declaration.id.name)
            const right = this._parseKind(declaration.init, {
                ...options,
                varName: constName
            })
            ast.push(`local ${constName}=${right}`)
        })
        return ast.toString()
    }

    // 入参定义解析
    _parseKingIdentifier (declaration, options = {}) {
        options.thisScope = options?.thisScope ?? false
        const ast = new LuaAst()
        ast.push(options.noAlias ? declaration.name : this._get_name(declaration.name))
        // if (options?.parentName && options.thisScope) {
        //     ast.push(options.parentName + '__' + declaration.name)
        // } else {
        // }
        return ast.toString()
    }

    // 值解析
    _parseKingLiteral (declaration, options) {
        const ast = new LuaAst()
        const varName = options?.varName
        let dataType = 'object'
        if (typeof declaration.value === 'number') {
            dataType = 'number'
            ast.push(declaration.value)
        } else {
            ast.push(`"${declaration.value}"`)
        }
        if (varName) {
            this._var_types[varName] = dataType
        }
        return ast.toString()
    }

    // 对象参数
    _parseKingProperty (declaration, options) {
        const ast = new LuaAst()
        let left = ''
        if (declaration.key.type === 'Identifier') {
            left = declaration.key.name
            if (options.computed) {
                left = `[${left}]`
            } else {
                left = `["${left}"]`
            }
        } else {
            left = this._parseKind(declaration.key, options)
            left = `[${left}]`
        }
        ast.push(`${left}=${this._parseKind(declaration.value, options)}`)
        return ast.toString()
    }

    // 赋值解析
    _parseKingAssignmentPattern (expression, options) {
        const ast = new LuaAst()

        const varName = this._parseKind(expression.left, options)
        const right = this._parseKind(expression.right, options)
        ast.push(`${varName}${expression.operator}${right}`)
        return ast.toString()
    }

    // 赋值表达式定义解析
    _parseKingAssignmentExpression (expression, options) {
        const ast = new LuaAst()
        const className = options?.className ?? ''

        const parseOperator = (left, right) => {
            const leftName = this._parseKind(left, options)
            const key = className ? className + ':' + leftName : leftName
            const subOptions = {
                ...options,
                varName: key,
            }
            let operator = expression.operator.substring(0, 1)
            if (operator === '=') {
                return `${leftName}=${this._parseKind(right, subOptions)}`
            }
            const rightValue = this._parseKind(right, subOptions)
            if (!['+', '-'].includes(operator) || this._var_types[leftName] !== 'number') {
                operator = '..'
            }
            return `${leftName}=${leftName}${operator}${rightValue}`
        }
        ast.push(parseOperator(expression.left, expression.right))
        // if (expression.left.object.type === 'ThisExpression') {
        // } else {
        //     // ast.push(`local ${objName} = {}`)
        //     // ast.push(parseOperator(`${objName}.${this._parseKind(expression.left)}`, right))
        //     // if (objName === 'module') {
        //     //     ast.push(`return ${objName}`)
        //     // }
        // }
        return ast.toString()
    }

    // 匿名函数
    _parseKingArrowFunctionExpression (expression, options) {
        const ast = new LuaAst()
        const params = expression.params.map(param => {
            return this._parseKind(param, options)
        })
        ast.push(`function (${params.join(',')})`)
        let pre = ''
        if (expression.body.type === 'BinaryExpression') {
            pre = '  return '
        }
        ast.push(pre + this._parseKind(expression.body, options))
        ast.push('end')
        return ast.toString()
    }

    // 函数赋值解析
    _parseKingFunctionExpression (expression, options) {
        const ast = new LuaAst()
        const params = expression.params.map(param => {
            return this._parseKind(param, options)
        })
        ast.push(`function (${params.join(',')})`)
        let pre = ''
        if (expression.body.type === 'BinaryExpression') {
            pre = '  return '
        }
        ast.push(pre + this._parseKind(expression.body, options))
        ast.push('end')
        return ast.toString()
    }

    // 函数定义解析
    _parseKingFunctionDeclaration (declaration, options) {
        const ast = new LuaAst()
        const params = declaration.params.map(param => {
            return this._parseKind(param, options)
        })
        ast.push(`function ${this._set_name('func', declaration.id.name)} (${params.join(',')})`)
        ast.push('end')
        return ast.toString()
    }

    // 类定义解析
    _parseKingClassDeclaration (declaration) {
        const ast = new LuaAst()
        this._use_class = true;

        const className = this._set_name('class', declaration.id.name)
        ast.push(`local ${className}=newClass()`)
        declaration.body.body.forEach(method => {
            const options = {
                className: className,
            }
            if (method.kind === 'constructor') {
                options.methodName = '__new__'
            } else if (method.key.name === 'destroy') {
                options.methodName = '__destroy__'
            }
            ast.push(this._parseKingMethodDeclaration(method, options))
        })
        // const params = declaration.params.map(param => {
        //     return this._parseKind(param)
        // })
        // ast.push(`function ${this._set_name('func', declaration.id.name)} (${params.join(',')})`)
        // ast.push('end')
        return ast.toString()
    }

    // 类方法定义解析
    _parseKingMethodDeclaration (declaration, options) {
        const ast = new LuaAst()
        this._use_class = true;

        const className = options?.className
        const methodName = options?.methodName ?? declaration.key.name
        if (methodName === '__new__') {
            ast.push(`function ${className}:${methodName}(__args)`)
            const params = declaration.value.params.map(param => {
                if (param.type === 'AssignmentPattern') {
                    const varName = className + '__' + this._parseKind(param.left, { className })
                    return `${varName}`
                }
                return this._parseKind(param, { className })
            })
            params.forEach((name, idx) => {
                const varName = this._set_name('class_args', name)

                ast.push(`  local ${varName}=__args[${idx + 1}]`)
            })
        } else {
            let prefix = ''
            if (declaration.kind === 'set') {
                prefix = '.__setters'
            } else if (declaration.kind === 'get') {
                prefix = '.__getters'
            }
            const defaultParams = []
            const params = declaration.value.params.map(param => {
                if (param.type === 'AssignmentPattern') {
                    const varName = className + '__' + this._parseKind(param.left, { className })
                    const right = this._parseKind(param.right, options)
                    defaultParams.push({
                        name: varName,
                        value: right
                    })
                    return `${varName}`
                }
                return this._parseKind(param, { className })
            })
            ast.push(`function ${className}${prefix}:${methodName}(${params.join(',')})`)
            if (defaultParams.length) {
                defaultParams.forEach(defaultParam => {
                    ast.push(`  ${defaultParam.name}=${defaultParam.name} or ${defaultParam.value}`)
                })
            }
        }
        declaration.value.body.body.forEach(statement => {
            const res = this._parseKind(statement, {
                ...options,
                className: className,
            })
            ast.push(`  ${res}`)
        })
        ast.push('end')
        // const params = declaration.params.map(param => {
        //     return this._parseKind(param)
        // })
        // ast.push(`function ${this._set_name('func', declaration.id.name)} (${params.join(',')})`)
        // ast.push('end')
        return ast.toString()
    }

    // this变量解析
    _parseKingThisDeclaration (declaration, options) {
        // console.log('opt', options)
        return 'self'
    }

    // 更新表达式
    _parseKingUpdateExpression (declaration, options) {
        const ast = new LuaAst()
        let varName = this._parseKingThisDeclaration(declaration.argument.object, options)
        const propertyName = this._parseKind(declaration.argument.property, options)
        varName += '.' + propertyName
        if (declaration.operator === '++') {
            ast.push(`${varName}=${varName}+1`)
        } else if (declaration.operator === '--') {
            ast.push(`${varName}=${varName}-1`)
        }
        return ast.toString()
    }

    // binary表达式
    _parseKingBinaryExpression (declaration, options) {
        const ast = new LuaAst()
        let left = this._parseKind(declaration.left, options)
        let right = this._parseKind(declaration.right, options)
        const isNumber = typeof declaration.right.value === 'number'

        let operator = declaration.operator
        if (operator === '===') {
            operator = '=='
        } else if (['!==', '!='].includes(operator)) {
            operator = '~='
        }
        if (!isNumber && operator === '+') {
            operator = '..'
            left = `tostring(${left})`
        }
        ast.push(`${left}${operator}${right}`)
        return ast.toString()
    }

    // 函数调用表达式
    _parseKingCallExpression (declaration, options) {
        const ast = new LuaAst()
        const className = options?.className ?? ''
        let left = this._parseKind(declaration.callee.object, {
            ...options,
        })
        let right = this._parseKind(declaration.callee.property, {
            ...options,
            thisScope: true,
            noAlias: true,
        })
        const params = this._parseKingArgument(declaration.arguments)
        const varType = this._var_types[className ? className + ':' + left : left]
        switch (varType) {
            case 'array':
                arrayParse(this, ast, left, right, params)
                break;
            default:
                ast.push(`${left}:${right}(${params.join(',')})`)
                break;
        }

        return ast.toString()
    }

    // 对象实例化
    _parseKingNewExpression (declaration, options) {
        const ast = new LuaAst()
        let callee = this._parseKind(declaration.callee, options)
        const args = this._parseKingArgument(declaration.arguments)

        ast.push(`${callee}:new{${args}}`)
        return ast.toString()
    }

    // 返回值
    _parseKingReturnStatement (declaration, options) {
        const ast = new LuaAst()

        ast.push(`return ${this._parseKind(declaration.argument, options)}`)
        return ast.toString()
    }

    // 代码块
    _parseKingBlockStatement (declaration, options) {
        const ast = new LuaAst()

        declaration.body.forEach(body => {
            ast.push(`  ${this._parseKind(body, options)}`)
        })
        return ast.toString()
    }

    // 一元
    _parseKingUnaryExpression (declaration, options) {
        const ast = new LuaAst()

        if (declaration.prefix) {
            ast.push(`${declaration.operator}${this._parseKind(declaration.argument, options)}`)
        }
        return ast.toString()
    }

    // 对象
    _parseKingObjectExpression (declaration, options) {
        const ast = new LuaAst()

        this._var_types[options.varName] = 'object'
        ast.push('{')
        declaration.properties.forEach(item => {
            ast.push(this._parseKind(item, { ...options, computed: item.computed, varName: undefined }) + ",")
        })
        ast.push('}')
        return ast.toString()
    }

    // 表达式定义解析
    _parseKingExpressionStatement (expression, options) {
        const ast = new LuaAst()
        ast.push(this._parseKind(expression, options))
        return ast.toString()
    }

    // 成员表达式解析
    _parseKingMemberExpression (expression, options) {
        const ast = new LuaAst()
        const objName = this._parseKind(expression.object, options)
        // ast.push(`local ${objName}`)
        if (this._var_types[objName] === 'array') {
            ast.push(`${objName}[${this._parseKind(expression.property, options)}+1]`)
        } else {
            if (expression.computed) {
                ast.push(`${objName}[${this._parseKind(expression.property, options)}]`)
            } else {
                ast.push(`${objName}.${this._parseKind(expression.property, options)}`)
            }
        }
        return ast.toString()
    }

    // 数组表达式解析
    _parseKingArrayExpression (expression, options) {
        const ast = new LuaAst()
        const params = expression.elements.map(element => {
            return this._parseKind(element, options)
        })
        const varName = options?.varName
        if (varName) {
            this._var_types[varName] = 'array'
        }
        ast.push(`{${params.join(',')}}`)
        return ast.toString()
    }

    // 参数解析
    _parseKingArgument (expression, options) {
        return expression.map(element => {
            return this._parseKind(element, options)
        })
    }

    toString () {
        this.luaAST.addStart('package.path="?.lua;.\\\\?.lua;.\\\\lua_lib\\\\\?.lua;" .. package.path')
        if (this._use_class) {
            this.luaAST.loadLib('lua_objects', '__Objects')
        }
        this.luaAST.loadLib('lua_array')
        this.luaAST.loadLib('lua_console')
        return this.luaAST.toString()
    }
}

fs.readFile(path.resolve(__dirname, 'example/app.js'), (err, data) => {
    const ast = new Js2Ast(data.toString())
    fs.writeFileSync(path.resolve(__dirname, 'output.lua'), ast.toString())
})
