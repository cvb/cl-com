    typedef struct ITypeLibVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            ITypeLib * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            ITypeLib * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            ITypeLib * This);
        
        /* [local] */ UINT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            ITypeLib * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            ITypeLib * This,
            /* [in] */ UINT index,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoType )( 
            ITypeLib * This,
            /* [in] */ UINT index,
            /* [out] */ __RPC__out TYPEKIND *pTKind);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoOfGuid )( 
            ITypeLib * This,
            /* [in] */ __RPC__in REFGUID guid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTinfo);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *GetLibAttr )( 
            ITypeLib * This,
            /* [out] */ TLIBATTR **ppTLibAttr);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeComp )( 
            ITypeLib * This,
            /* [out] */ __RPC__deref_out_opt ITypeComp **ppTComp);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *GetDocumentation )( 
            ITypeLib * This,
            /* [in] */ INT index,
            /* [out] */ BSTR *pBstrName,
            /* [out] */ BSTR *pBstrDocString,
            /* [out] */ DWORD *pdwHelpContext,
            /* [out] */ BSTR *pBstrHelpFile);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *IsName )( 
            ITypeLib * This,
            /* [out][in] */ LPOLESTR szNameBuf,
            /* [in] */ ULONG lHashVal,
            /* [out] */ BOOL *pfName);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *FindName )( 
            ITypeLib * This,
            /* [out][in] */ LPOLESTR szNameBuf,
            /* [in] */ ULONG lHashVal,
            /* [length_is][size_is][out] */ ITypeInfo **ppTInfo,
            /* [length_is][size_is][out] */ MEMBERID *rgMemId,
            /* [out][in] */ USHORT *pcFound);
        
        /* [local] */ void ( STDMETHODCALLTYPE *ReleaseTLibAttr )( 
            ITypeLib * This,
            /* [in] */ TLIBATTR *pTLibAttr);
        
        END_INTERFACE
    } ITypeLibVtbl;

    interface ITypeLib
    {
        CONST_VTBL struct ITypeLibVtbl *lpVtbl;
    };
