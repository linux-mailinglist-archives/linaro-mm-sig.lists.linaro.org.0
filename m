Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C249A5EAFB9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 20:25:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADAAE4050E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 18:24:59 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by lists.linaro.org (Postfix) with ESMTPS id 0D2D53F521
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 18:24:40 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id v4so7281040pgi.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 11:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=4OBTQRXHJygCpY/2rBSvNKQlNNozBBa3mtJlOeJ/EyY=;
        b=cSzvTXKu85TucB7q+g9CQdjC/FdnYJW7ESEBDVMDQZhpqkoHzMT6tB5vmqaaVmtq+c
         HBo/BI5kdAn7jf+xxq5MiOLWI7cJumnHX29hS+SWLXo9wgZxYqgGZ4IjXwCG6/+UPFiS
         mSjP6/8kEubWj+KXOsoeUGGJwGHBMRMvzL4Ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=4OBTQRXHJygCpY/2rBSvNKQlNNozBBa3mtJlOeJ/EyY=;
        b=z9gtkVm0dl+IF9QeE8u5ev3szmO00jsbCQ7o42+QCA1/ajYmvxqJClVysnPmKy4g/7
         jydXEoLkZMVnA60KEDslbmQk18R7fQ9OMB852iq+NgovnO6qFuIgbo/EFwXwfwtr2zt9
         a5Y8Tzv9sNNYKTgAA6rRZgArxGFwRhrd5sLhiV5OLCoY4LrmdeSsFCvpwT+2e3YGk/Bq
         XAg4t9MTBvdAGULZaysRJG8dPfzfBefxifhQjrkWDwM7RjITecKhjOALQxc8CQfVzUdl
         P+G6gJ5RxnuYHYXm9zmykAlz9a2SJx9Sva8AqxXhJrtqZ2L0eMcnFl199L+nP3JLvZEk
         mW3w==
X-Gm-Message-State: ACrzQf2o/NL2H84FhKr3zHRjBDYB9Fw2GB4hO8zSofcXbfIKo5FV67Tr
	sk1Pt6d5s1+yfoRKH08Qe1LANw==
X-Google-Smtp-Source: AMsMyM6gzz3RlLPDBF6eEAacYBSNNxOrYYdXLeQNzcYYWROPiLY1NScn4aUnW3BZuZbnjPt9v5tgLQ==
X-Received: by 2002:a63:4750:0:b0:43c:dac:9e4b with SMTP id w16-20020a634750000000b0043c0dac9e4bmr21137736pgk.300.1664216679159;
        Mon, 26 Sep 2022 11:24:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p2-20020a170902c70200b0016f85feae65sm11305644plp.87.2022.09.26.11.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 11:24:38 -0700 (PDT)
Date: Mon, 26 Sep 2022 11:24:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209261123.B2CBAE87E0@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-14-keescook@chromium.org>
 <f4fc52c4-7c18-1d76-0c7a-4058ea2486b9@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4fc52c4-7c18-1d76-0c7a-4058ea2486b9@suse.cz>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: /
X-Rspamd-Queue-Id: 0D2D53F521
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.180:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kvack.org,intel.com,gmail.com,linux.com,kernel.org,google.com,lge.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=cSzvTXKu;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.215.180 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Message-ID-Hash: BSFZLBHLFOKIXQUMBJFHWQM4HF6Y2GX2
X-Message-ID-Hash: BSFZLBHLFOKIXQUMBJFHWQM4HF6Y2GX2
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, li
 nux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 13/16] mempool: Use kmalloc_size_roundup() to match ksize() usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSFZLBHLFOKIXQUMBJFHWQM4HF6Y2GX2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 26, 2022 at 03:50:43PM +0200, Vlastimil Babka wrote:
> On 9/23/22 22:28, Kees Cook wrote:
> > Round up allocations with kmalloc_size_roundup() so that mempool's use
> > of ksize() is always accurate and no special handling of the memory is
> > needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.
> > 
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >   mm/mempool.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/mm/mempool.c b/mm/mempool.c
> > index 96488b13a1ef..0f3107b28e6b 100644
> > --- a/mm/mempool.c
> > +++ b/mm/mempool.c
> > @@ -526,7 +526,7 @@ EXPORT_SYMBOL(mempool_free_slab);
> >    */
> >   void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
> >   {
> > -	size_t size = (size_t)pool_data;
> > +	size_t size = kmalloc_size_roundup((size_t)pool_data);
> 
> Hm it is kinda wasteful to call into kmalloc_size_roundup for every
> allocation that has the same input. We could do it just once in
> mempool_init_node() for adjusting pool->pool_data ?
> 
> But looking more closely, I wonder why poison_element() and
> kasan_unpoison_element() in mm/mempool.c even have to use ksize()/__ksize()
> and not just operate on the requested size (again, pool->pool_data). If no
> kmalloc mempool's users use ksize() to write beyond requested size, then we
> don't have to unpoison/poison that area either?

Yeah, I think that's a fair point. I will adjust this.

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
