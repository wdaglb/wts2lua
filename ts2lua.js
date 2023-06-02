const fs = require('fs')
const path = require('path')
const { parse } = require('@babel/core')
const arrayParse = require("./array");
const { glob } = require('glob')
const watch = require('watch')

const AST = {
    Program: 'Program',
    Identifier: 'Identifier',
    NumericLiteral: 'NumericLiteral',
    StringLiteral: 'StringLiteral',
    ObjectProperty: 'ObjectProperty',
    Literal: 'Literal',
    Property: 'Property',
    AssignmentPattern: 'AssignmentPattern',
    AssignmentExpression: 'AssignmentExpression',
    VariableDeclaration: 'VariableDeclaration',
    ImportDeclaration: 'ImportDeclaration',
    ImportDefaultSpecifier: 'ImportDefaultSpecifier',
    ImportSpecifier: 'ImportSpecifier',
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
    IfStatement: 'IfStatement',
    ForStatement: 'ForStatement',
    ForInStatement: 'ForInStatement',
    ForOfStatement: 'ForOfStatement',
    WhileStatement: 'WhileStatement',
    DoWhileStatement: 'DoWhileStatement',
    BreakStatement: 'BreakStatement',
    UnaryExpression: 'UnaryExpression',
    ObjectExpression: 'ObjectExpression',
    ObjectMethod: 'ObjectMethod',
    LogicalExpression: 'LogicalExpression',
    ExportDefaultDeclaration: 'ExportDefaultDeclaration',
    ExportNamedDeclaration: 'ExportNamedDeclaration',
}
// lua抽象树
class LuaAst {
    start = []
    codes = []
    _libs = []
    ident = 0
    constructor(location) {
        this.ident = 0
        // console.log('type', location)
        // this.ident = location?.start?.column ?? 0
    }

    addStart (code) {
        this.start.push(code)
    }

    /**
     * 添加代码.
     * @param code
     */
    push (code) {
        this.codes.push(this._parseIdent() + code)
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

    /**
     * 加载包.
     */
    load (file, name) {
        if (this._libs.includes(file)) {
            return
        }
        this._libs.push(file)
        const requireStr = `require("${file}")`
        if (name) {
            this.codes.unshift(`local ${name} = ${requireStr}`)
        } else {
            this.codes.unshift(`${requireStr}`)
        }
    }

    // 缩进
    _parseIdent () {
        let val = ''
        for (let i = 0; i < this.ident; i++) {
            val += ' '
        }
        return val
    }

    toString () {
        let pre = ""
        if (this.start.length) {
            pre = this.start.join("\r\n") + "\r\n"
        }
        return pre + this.codes.join("\r\n")
    }
}

class Ts2Ast {
    luaAST;

    // 别名组
    _def_name_alias = {};
    // 是否有使用class
    _use_class = false;
    // 数据类型
    _var_types = {};
    // 源目录
    _dest_path = '';
    // 输出目录
    _output_path = '';

    buildCode (code) {
        this.luaAST = new LuaAst()
        const nodes = parse(code).program
        if (nodes.type === AST.Program) {
            this._parsePrograms(nodes.body, {
                indent: 0,
            })
        }
    }

    setDest (dir) {
        this._dest_path = dir
    }

    setOutput (dir) {
        this._output_path = dir
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
        if (! ast) {
            return ''
        }
        switch (ast.type) {
            case AST.VariableDeclaration:
                res = this._parseKingConst(ast.declarations, options)
                break;
            case AST.ImportDeclaration:
                res = this._parseKingImportDeclaration(ast, options)
                break;
            case AST.ImportDefaultSpecifier:
                res = this._parseKingImportDefaultSpecifier(ast, options)
                break;
            case AST.ImportSpecifier:
                res = this._parseKingImportSpecifier(ast, options)
                break;
            case AST.Identifier:
                res = this._parseKingIdentifier(ast, options)
                break;
            case AST.NumericLiteral:
                res = this._parseKingNumericLiteral(ast, options)
                break;
            case AST.StringLiteral:
                res = this._parseKingStringLiteral(ast, options)
                break;
            case AST.ObjectProperty:
                res = this._parseKingObjectProperty(ast, options)
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
            case AST.IfStatement:
                res = this._parseKingIfStatement(ast, options)
                break;
            case AST.ForStatement:
                res = this._parseKingForStatement(ast, options)
                break;
            case AST.ForInStatement:
                res = this._parseKingForInStatement(ast, options)
                break;
            case AST.ForOfStatement:
                res = this._parseKingForOfStatement(ast, options)
                break;
            case AST.WhileStatement:
                res = this._parseKingWhileStatement(ast, options)
                break;
            case AST.DoWhileStatement:
                res = this._parseKingDoWhileStatement(ast, options)
                break;
            case AST.BreakStatement:
                res = this._parseKingBreakStatement(ast, options)
                break;
            case AST.UnaryExpression:
                res = this._parseKingUnaryExpression(ast, options)
                break;
            case AST.ObjectExpression:
                res = this._parseKingObjectExpression(ast, options)
                break;
            case AST.ObjectMethod:
                res = this._parseKingObjectMethod(ast, options)
                break;
            case AST.LogicalExpression:
                res = this._parseKingLogicalExpression(ast, options)
                break;
            case AST.ExportDefaultDeclaration:
                res = this._parseKingExportDefaultDeclaration(ast, options)
                break;
            case AST.ExportNamedDeclaration:
                res = this._parseKingExportNamedDeclaration(ast, options)
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
            let value = constName
            if (declaration.init) {
                value += '=' + this._parseKind(declaration.init, {
                    ...options,
                    varName: constName
                })
            }
            if (options?.removeDef) {
                ast.push(value)
            } else {
                ast.push(`local ${value}`)
            }
        })
        return ast.toString()
    }

    // import
    _parseKingImportDeclaration (declaration, options) {
        const ast = new LuaAst()

        let moduleName = ''
        if (declaration.source.value.endsWith('.ts')) {
            [moduleName,] = declaration.source.value.split('.')
        } else {
            moduleName = declaration.source.value
        }
        const luaModule = moduleName.replace(/\.\//g, '').replace(/\//g, '.')

        const requireTs = path.resolve(this._dest_path, declaration.source.value + '.ts')

        const data = fs.readFileSync(requireTs)

        const tsAst = new Ts2Ast()
        tsAst.setDest(this._dest_path)
        tsAst.setOutput(this._output_path)
        tsAst.buildCode(data.toString())

        const outputFile = path.resolve(this._output_path, moduleName)
        const outputPath = path.dirname(outputFile)
        if (! fs.existsSync(outputPath)) {
            fs.mkdirSync(outputPath, { mode: 0o755, recursive: true })
        }
        fs.writeFileSync(outputFile + '.lua', tsAst.toString())

        if (declaration.specifiers.length) {
            ast.push(`__import["${luaModule}"]=require("${luaModule}")`)
            declaration.specifiers.forEach(item => {
                const name = '__import["' + luaModule + '"]'
                if (item.type === AST.ImportDefaultSpecifier) {
                    ast.push(`local ${item.local.name}=${name}.default`)
                } else {
                    ast.push(`local ${item.local.name}=${name}.${item.local.name}`)
                }
            })
        } else {
            ast.push(`require("${luaModule}")`)
        }

        return ast.toString()
    }

    // import default 命名
    _parseKingImportDefaultSpecifier (declaration, options) {
        const ast = new LuaAst()
        ast.push(declaration.local.name)
        return ast.toString()
    }

    // import {} 命名
    _parseKingImportSpecifier (declaration, options) {
        const ast = new LuaAst()
        ast.push(declaration.local.name)
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

    // 整数
    _parseKingNumericLiteral (declaration, options = {}) {
        options.thisScope = options?.thisScope ?? false
        const ast = new LuaAst()
        ast.push(declaration.value)
        return ast.toString()
    }

    // 字符串
    _parseKingStringLiteral (declaration, options = {}) {
        options.thisScope = options?.thisScope ?? false
        const ast = new LuaAst()
        ast.push(`"${declaration.value}"`)
        return ast.toString()
    }

    // 对象
    _parseKingObjectProperty (declaration, options = {}) {
        options.thisScope = options?.thisScope ?? false
        const ast = new LuaAst(declaration.loc)
        const left = this._parseKind(declaration.key, options)
        const right = this._parseKind(declaration.value, options)
        ast.push(`["${left}"]: ${right}`)
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
        } else if (typeof declaration.value === 'boolean') {
            dataType = 'boolean'
            ast.push(declaration.raw)
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
            if (declaration.value) {
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
            }
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
        if (declaration.value) {
            declaration.value.body.body.forEach(statement => {
                const res = this._parseKind(statement, {
                    ...options,
                    className: className,
                })
                ast.push(`  ${res}`)
            })
        }
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
        let varName = ''
        if (declaration.argument.type === AST.Identifier) {
            varName = this._parseKind(declaration.argument, options)
        } else {
            varName = this._parseKingThisDeclaration(declaration.argument.object, options)
            const propertyName = this._parseKind(declaration.argument.property, options)
            varName += '.' + propertyName
        }
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
        const ast = new LuaAst(declaration.loc)

        declaration.body.forEach(body => {
            ast.push(`  ${this._parseKind(body, options)}`)
        })
        return ast.toString()
    }

    // if
    _parseKingIfStatement (declaration, options) {
        const ast = new LuaAst()
        const isElse = options?.isElse ? 'elseif' : 'if'
        if (isElse === 'elseif') {
            options.isElse = false
        }

        const fill = declaration.test.type === 'LogicalExpression'
        if (fill) {
            ast.push(`${isElse} ${this._parseKind(declaration.test, options)} then`)
        } else {
            ast.push(`${isElse} (${this._parseKind(declaration.test, options)}) then`)
        }
        ast.push(this._parseKind(declaration.consequent, options))
        if (declaration.alternate) {
            if (declaration.alternate.type === 'IfStatement') {
                ast.push(this._parseKingIfStatement(declaration.alternate, {
                    ...options,
                    isElse: true,
                }))
                return ast.toString()
            } else {
                ast.push('else')
                ast.push(this._parseKind(declaration.alternate, {
                    ...options,
                    isElse: false,
                }))
            }
        }
        ast.push('end')
        return ast.toString()
    }

    // for
    _parseKingForStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push('do')
        ast.push(`${this._parseKind(declaration.init, options)}`)
        ast.push(`  while ${this._parseKind(declaration.test, options)} do`)
        ast.push(`  ${this._parseKind(declaration.body, options)}`)
        ast.push(`    ${this._parseKind(declaration.update, options)}`)
        ast.push('  end')
        ast.push('end')
        return ast.toString()
    }

    // for in
    _parseKingForInStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push(`for ${this._parseKind(declaration.left, {
            ...options,
            removeDef: true,
        })} in pairs(${this._parseKind(declaration.right, options)}) do`)
        ast.push(`${this._parseKind(declaration.body, options)}`)
        ast.push('end')
        return ast.toString()
    }

    // for of
    _parseKingForOfStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push(`for ___,${this._parseKind(declaration.left, {
            ...options,
            removeDef: true,
        })} in pairs(${this._parseKind(declaration.right, options)}) do`)
        ast.push(`${this._parseKind(declaration.body, options)}`)
        ast.push('end')
        return ast.toString()
    }

    // while
    _parseKingWhileStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push(`while ${this._parseKind(declaration.test, options)} do`)
        ast.push(`${this._parseKind(declaration.body, options)}`)
        ast.push('end')
        return ast.toString()
    }

    // do while
    _parseKingDoWhileStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push(`repeat`)
        ast.push(`  do`)
        ast.push(`${this._parseKind(declaration.body, options)}`)
        ast.push(`  end`)
        ast.push(`until not (${this._parseKind(declaration.test, options)})`)
        return ast.toString()
    }

    // 跳出循环
    _parseKingBreakStatement (declaration, options) {
        const ast = new LuaAst(declaration.loc)
        ast.push(`  break`)
        return ast.toString()
    }

    // 一元
    _parseKingUnaryExpression (declaration, options) {
        const ast = new LuaAst(declaration.loc)

        if (declaration.prefix) {
            ast.push(`${declaration.operator}${this._parseKind(declaration.argument, options)}`)
        }
        return ast.toString()
    }

    // 对象
    _parseKingObjectExpression (declaration, options) {
        const ast = new LuaAst()

        if (options?.varName) {
            this._var_types[options.varName] = 'object'
        }
        ast.push('{')
        declaration.properties.forEach(item => {
            ast.push(this._parseKind(item, { ...options, computed: item.computed, varName: undefined }) + ",")
        })
        ast.push('}')
        return ast.toString()
    }

    // 对象方法
    _parseKingObjectMethod (declaration, options) {
        const ast = new LuaAst()

        ast.push(`["${this._parseKind(declaration.key, options)}"]=function ()`)
        ast.push(`${this._parseKind(declaration.body, options)}`)
        ast.push('end')
        return ast.toString()
    }

    // 逻辑运算
    _parseKingLogicalExpression (declaration, options) {
        const ast = new LuaAst()

        let operator = ''
        switch (declaration.operator) {
            case '&&':
                operator = ' and '
                break;
            case '||':
                operator = ' or '
                break;
            default:
                operator = declaration.operator
                break;
        }
        ast.push(`(${this._parseKind(declaration.left, options)}${operator}${this._parseKind(declaration.right, options)})`)
        return ast.toString()
    }

    // 导出
    _parseKingExportDefaultDeclaration (expression, options) {
        const ast = new LuaAst()
        ast.push('local __export = {}')
        ast.push(`__export.default=${this._parseKind(expression.declaration, options)}`)
        ast.push('return __export')
        return ast.toString()
    }

    // 导出无命名
    _parseKingExportNamedDeclaration (expression, options) {
        const ast = new LuaAst()
        ast.push('local __export = {}')
        expression.declaration.declarations.forEach(item => {
            ast.push(`__export.${item.id.name}=${this._parseKind(item.init, options)}`)
        })
        ast.push('return __export')
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
        this.luaAST.addStart('local __import = {}')
        if (this._use_class) {
            this.luaAST.loadLib('lua_objects', '__Objects')
        }
        this.luaAST.loadLib('lua_array')
        this.luaAST.loadLib('lua_console')
        this.luaAST.load('up')
        return this.luaAST.toString()
    }

    static build (dest, output) {
        const data = fs.readFileSync(dest)

        const ast = new Ts2Ast()
        const dir = path.dirname(output)
        ast.setDest(path.dirname(dest))
        ast.setOutput(dir)
        ast.buildCode(data.toString())
        if (! fs.existsSync(dir)) {
            fs.mkdirSync(dir, { mode: 0o755 })
        }
        fs.writeFileSync(output, ast.toString())
        // 复制lua_lib
        fs.cpSync(path.resolve(__dirname, 'lua_lib'), path.resolve(dir, 'lua_lib'), { recursive: true })
    }
}

const content = fs.readFileSync(path.resolve(process.cwd(), '.build.json'))
if (! content) {
    return
}
const config = JSON.parse(content)
watch.watchTree(config.dest, (f, curr, prev) => {
    const date = new Date()
    const dateStr = date.getFullYear() + '-' + date.getMonth() + '-' + date.getDate()
        + ' ' + date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds()

    console.log(dateStr + '' + '----build----[' + config.output + ']')
    Ts2Ast.build(path.resolve(config.dest, 'main.ts'), path.resolve(config.output, 'main.lua'))
})
// console.log('p', process.argv)
//
// Ts2Ast.build(path.resolve(__dirname, 'src/main.ts'), path.resolve(__dirname, 'dist/main.lua'))
