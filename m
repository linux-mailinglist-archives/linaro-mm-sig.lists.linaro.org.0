Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKDnOKYK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D45411735
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C300D44781
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:25 +0000 (UTC)
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by lists.linaro.org (Postfix) with ESMTPS id 070BF3F7AA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 19:22:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3f_dGaQkbANoOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.161.69 as permitted sender) smtp.mailfrom=3f_dGaQkbANoOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-65b31ec93e7so4746374eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 11:22:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766258559; x=1766863359;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wXBuMKsbM+KwTrBICDHBdfzXtgBQf2h5Z/6bZ4D2vbk=;
        b=WLmtJBDJ5o7tHLsbi9g8TMpnNomgFjlIqjzQhbMyjOmPjeTOccBNVQN8EJl3gtmasN
         iaQYQw7thcXzFfUV7SpZn85eiyWYUNPNoENEdgtLD8S6OmceGTfHNmwIaV5kCCR9iYcV
         U9mw2C9ResLKBa/sb2g19DHsiEB1HvVclRSU+h9uzIbZPmTClQ7abRu9vLBaX+ZkXwf7
         Fz6UcLW+iXItyLQqJUs+JXDLPEtx2C7EigDR+GI0VKEZrUjKadPG8t2u1HO8OUN3dVED
         jdHNgiZABKlt5UsdsTwRHjrHtahTTy0l8ruMmACiPio1DTI1O8uPyHe3Vzn8GOJ1GA0U
         TGCg==
X-Forwarded-Encrypted: i=1; AJvYcCVVYTDJkqSIkbP1W74BUI4dD18/89KOMCe4wbmmOU028UEdw+H1q5L4F2T6A+CNufLYrEVQp3eekbBrLxtI@lists.linaro.org
X-Gm-Message-State: AOJu0YxCPQosUbqnV7fwH7+b8G0FpgQt0IuStg7SEVUXLlt8F7dghPcK
	MkvUzhHwQMEs1fY2n1rIWnkWxpcCumNP3nUFeFCJUnvi+gsLPwCR6fn3T+j5KFm/AeTQ/dacNHU
	incQP8vjJE7jW4e/2kMKuwi/tPWZ/le7pHjz1D+QSCDw5LFYxA1WvGsvA6fY=
X-Google-Smtp-Source: AGHT+IEFvvW4sFfICXsBjWL7HLiwQzByWYxuBpxiryOzRSkiF+Rs7HQiqXIBG29DxZUQGipiZQleuih4ce9em2r6jbf6FZrMgkh0
MIME-Version: 1.0
X-Received: by 2002:a05:6820:2291:b0:659:9a49:8f25 with SMTP id
 006d021491bc7-65d0ea9c905mr2793790eaf.54.1766258559494; Sat, 20 Dec 2025
 11:22:39 -0800 (PST)
Date: Sat, 20 Dec 2025 11:22:39 -0800
In-Reply-To: <20251220192210.399423-1-szymonwilczek@gmx.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6946f77f.050a0220.1b4e0c.0023.GAE@google.com>
From: syzbot <syzbot@syzkaller.appspotmail.com>
To: szymonwilczek@gmx.com
X-Spamd-Bar: --
X-MailFrom: 3f_dGaQkbANoOUVG6HHAN6LLE9.CKKCHAQOAN8KJPAJP.8KI@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KME6VIMCDI2RBEUBW7L5DYC2U3OASVTN
X-Message-ID-Hash: KME6VIMCDI2RBEUBW7L5DYC2U3OASVTN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:08 +0000
CC: christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, szymonwilczek@gmx.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix WARNING in dma_buf_vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KME6VIMCDI2RBEUBW7L5DYC2U3OASVTN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2804];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmx.com];
	FREEMAIL_CC(0.00)[amd.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,linaro.org,googlegroups.com,gmx.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,gmx.com:email,linaro.org:email]
X-Rspamd-Queue-Id: A0D45411735
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> When a driver's vmap callback returns an error (e.g. -ENOMEM), dma_buf_vmap()
> triggers a WARN_ON_ONCE(). This is incorrect as vmap operations can legitimately
> fail due to resource exhaustion or other transient conditions, as documented.
>
> Fix this by removing the WARN_ON_ONCE(). The error code is already correctly
> propagated to the caller.
>
> Reported-by: syzbot+cd944c467e4d4bc24cf6@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug\?extid\=4317d7108e14e5d56308
> Signed-off-by: Szymon Wilczek <szymonwilczek@gmx.com>
> ---
>  drivers/dma-buf/dma-buf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index edaa9e4ee4ae..14b55f67ee1c 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -1525,7 +1525,7 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct iosys_map *map)
>  	BUG_ON(iosys_map_is_set(&dmabuf->vmap_ptr));
>  
>  	ret = dmabuf->ops->vmap(dmabuf, &ptr);
> -	if (WARN_ON_ONCE(ret))
> +	if (ret)
>  		return ret;
>  
>  	dmabuf->vmap_ptr = ptr;
> -- 
> 2.52.0
>

I see the command but can't find the corresponding bug.
The email is sent to  syzbot+HASH@syzkaller.appspotmail.com address
but the HASH does not correspond to any known bug.
Please double check the address.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
