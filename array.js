const joinParams = (params) => {
    if (params.length > 0) {
        return ',' + params.join(',')
    }
    return ''
}

module.exports = (self, ast, left, right, params) => {
    switch (right) {
        case 'push':
            ast.push(`table.insert(${left}${joinParams(params)})`)
            break;
        case 'unshift':
            ast.push(`__Array_Unshift(${left}${joinParams(params)})`)
            break;
        case 'splice':
            if (params.length === 2) {
                ast.push(`__Array_Splice(${left}, ${params[0]}+1, ${params[1]})`)
            } else if (params.length >= 3) {
                const str = params.slice(2)
                let strParam = ''
                if (str.length > 0) {
                    strParam += ',' + str.join(',')
                }

                ast.push(`__Array_Splice(${left}, ${params[0]}+1, ${params[1] + strParam})`)
            }
            break;
        case 'slice':
            params = params.map(idx => idx + '+1')

            ast.push(`__Array_Slice(${left}${joinParams(params)})`)
            break;
        case 'reverse':
            ast.push(`__Array_Reverse(${left})`)
            break;
        case 'join':
            ast.push(`table.concat(${left}${joinParams(params)})`)
            break;
        case 'map':
            ast.push(`__Array_Map(${left}${joinParams(params)})`)
            break;
        case 'forEach':
            ast.push(`__Array_ForEach(${left}${joinParams(params)})`)
            break;
        case 'filter':
            ast.push(`__Array_Filter(${left}${joinParams(params)})`)
            break;
        case 'indexOf':
            params = params.map((val, idx) => {
                if (idx < 1) {
                    return val
                }
                return `${val}-1`
            })
            ast.push(`__Array_IndexOf(${left}${joinParams(params)})-1`)
            break;
        case 'lastIndexOf':
            params = params.map((val, idx) => {
                if (idx < 1) {
                    return val
                }
                return `${val}-1`
            })
            ast.push(`__Array_LastIndexOf(${left}${joinParams(params)})-1`)
            break;
        case 'includes':
            ast.push(`__Array_Includes(${left}${joinParams(params)})`)
            break;
        case 'concat':
            ast.push(`__Array_Concat(${left}${joinParams(params)})`)
            break;
        case 'fill':
            params = params.map((val, idx) => {
                if (idx === 0) {
                    return val
                }
                return `${val}+1`
            })
            ast.push(`__Array_Fill(${left}${joinParams(params)})`)
            break;
        case 'findIndex':
            ast.push(`__Array_FindIndex(${left}${joinParams(params)})-1`)
            break;
        case 'find':
            ast.push(`__Array_Find(${left}${joinParams(params)})`)
            break;
        case 'shift':
            ast.push(`__Array_Shift(${left}${joinParams(params)})`)
            break;
        case 'pop':
            ast.push(`__Array_Pop(${left}${joinParams(params)})`)
            break;
        case 'every':
            ast.push(`__Array_Every(${left}${joinParams(params)})`)
            break;
        case 'at':
            params = params.map((val, idx) => {
                return `${val}+1`
            })
            ast.push(`__Array_At(${left}${joinParams(params)})`)
            break;
        default:
            ast.push(`${left}:${right}(${params.join(',')})`)
            break;
    }
}
