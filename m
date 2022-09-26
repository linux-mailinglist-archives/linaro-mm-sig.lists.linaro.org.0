Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7198D60C346
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 07:32:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79BC63F457
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Oct 2022 05:32:21 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id EA474404AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 13:50:45 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id BD2191F381;
	Mon, 26 Sep 2022 13:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1664200244; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4+nnignD8u93QTMbO+4vxufOtmSDjzXgxDuRW+9Vc+Y=;
	b=wXNPeKYY807oTGOEqp5VUsWItY4N/bf2FG0PYuKf/76ya/XWXoSBlutnZ1v4V7ZTVE24Jq
	kcDNiVz+QDDTZinU63vcP0aQKnt9DxgJ/Il0N5ifhw8+wIaLXqfcS4eEjoUOz7O6KuQRXh
	6XNfMe0qLNWn1mp8715x1o53Ql+qjsY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1664200244;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4+nnignD8u93QTMbO+4vxufOtmSDjzXgxDuRW+9Vc+Y=;
	b=HGu2wC9OaQUC3t9QLyIF5OanWAJ3MVeu2wqtrCmlnZR0Vt3rj6ay/cPA71LiUBug2kTQ26
	BQkvYbGQFVWjp7Dw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 275AE139BD;
	Mon, 26 Sep 2022 13:50:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id cuKbCDSuMWOIeAAAMHmgww
	(envelope-from <vbabka@suse.cz>); Mon, 26 Sep 2022 13:50:44 +0000
Message-ID: <f4fc52c4-7c18-1d76-0c7a-4058ea2486b9@suse.cz>
Date: Mon, 26 Sep 2022 15:50:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-14-keescook@chromium.org>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <20220923202822.2667581-14-keescook@chromium.org>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: +
X-Rspamd-Queue-Id: EA474404AE
X-Spamd-Result: default: False [1.00 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.220.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[37];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[suse.cz:+];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.220.0/23, country:DE];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[suse.cz];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kvack.org,intel.com,gmail.com,linux.com,kernel.org,google.com,lge.com,davemloft.net,redhat.com,linuxfoundation.org,toxicpanda.com,suse.com,linaro.org,amd.com,fb.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,openvswitch.org,lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=wXNPeKYY;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=HGu2wC9O;
	spf=pass (lists.linaro.org: domain of vbabka@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=vbabka@suse.cz;
	dmarc=none
X-Spam-Level: *
X-MailFrom: vbabka@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PRSC2MOHA22TVCMRIKQMOK4IJXF2KR7B
X-Message-ID-Hash: PRSC2MOHA22TVCMRIKQMOK4IJXF2KR7B
X-Mailman-Approved-At: Tue, 25 Oct 2022 05:31:21 +0000
CC: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linu
 x-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 13/16] mempool: Use kmalloc_size_roundup() to match ksize() usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PRSC2MOHA22TVCMRIKQMOK4IJXF2KR7B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 9/23/22 22:28, Kees Cook wrote:
> Round up allocations with kmalloc_size_roundup() so that mempool's use
> of ksize() is always accurate and no special handling of the memory is
> needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-mm@kvack.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   mm/mempool.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/mempool.c b/mm/mempool.c
> index 96488b13a1ef..0f3107b28e6b 100644
> --- a/mm/mempool.c
> +++ b/mm/mempool.c
> @@ -526,7 +526,7 @@ EXPORT_SYMBOL(mempool_free_slab);
>    */
>   void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
>   {
> -	size_t size = (size_t)pool_data;
> +	size_t size = kmalloc_size_roundup((size_t)pool_data);

Hm it is kinda wasteful to call into kmalloc_size_roundup for every 
allocation that has the same input. We could do it just once in 
mempool_init_node() for adjusting pool->pool_data ?

But looking more closely, I wonder why poison_element() and 
kasan_unpoison_element() in mm/mempool.c even have to use 
ksize()/__ksize() and not just operate on the requested size (again, 
pool->pool_data). If no kmalloc mempool's users use ksize() to write 
beyond requested size, then we don't have to unpoison/poison that area 
either?

>   	return kmalloc(size, gfp_mask);
>   }
>   EXPORT_SYMBOL(mempool_kmalloc);

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
