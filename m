Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDFVMqwK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 417C6411743
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B70F4485A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:31 +0000 (UTC)
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by lists.linaro.org (Postfix) with ESMTPS id D8C62400FF
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Dec 2025 01:24:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3VExHaQkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.210.69 as permitted sender) smtp.mailfrom=3VExHaQkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7c7028db074so6384708a34.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 17:24:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766280276; x=1766885076;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DlaivU6khbq+H4gGSGhiP4ZojYz6+EckF6yCmLt2N4M=;
        b=XnDQiGufWaTl9GLC4F5JJ0gCIJQfrTsUp5JfQ+iX/MERoVFWR5B/Ovdcey1NaO4g+o
         rk+2XMIDSunG2ZVNTox3trNP2SsRzO0+AUS901ueV4+iB13UcC77r5gTyYN32swbQfcV
         qgTHV4IxakdLEUK2PhKOskCJ1zS0KQ2SFLVanbd4LG9XPY3+XP/nmOJwtdyO/TzziD5o
         8X4kWc+7slmb4Y9mjvtT3n56umWHB1ucfRTEN6eadpsLcX4cczmTC09oiaW2aoYEs2dM
         ehvNW7GdCfTu1y5PDchDGeaeSebQ+KcgRecYolbRgWr/iW5o2kviweeujI9g08LCg8FR
         ygaw==
X-Forwarded-Encrypted: i=1; AJvYcCWHTKbPWExTqfkr+2nU56G5wV8nKZOlTndecvpKQ4uFt3woqygAn8msTQKzDM6RD6ivYRCW1qswZ3Iy2BB1@lists.linaro.org
X-Gm-Message-State: AOJu0YxDtp0EzdG05l95czYL4Wm6SYEM75X7rVTEo8UysbcMFU5PGIwh
	F2sxfzen1BwlsSWofUe4RIO54i+EKzQ6ea7moTUH8IOWR8ZkNvloSJTZX1CCQo2f1p94qaZgFUj
	n+DpPrWNXYKZp0sdU68gzbn8LWccc+6c2R8qXpwsF8CbCaXxiQqQSf6gyxYE=
X-Google-Smtp-Source: AGHT+IH+3U0qxpXqSt2znP5azbSRtxeGiVcScp7xuFDXGkI7KaBiwhRhA56N66pgM47IIb6IgFNwUuSwgjmLVQsyft8Gz5mZYCuO
MIME-Version: 1.0
X-Received: by 2002:a05:6820:2223:b0:659:9a49:8f2d with SMTP id
 006d021491bc7-65d0eae1f9fmr3113949eaf.62.1766280276329; Sat, 20 Dec 2025
 17:24:36 -0800 (PST)
Date: Sat, 20 Dec 2025 17:24:36 -0800
In-Reply-To: <20251220192210.399423-1-szymonwilczek@gmx.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <69474c54.a70a0220.25eec0.006a.GAE@google.com>
From: syzbot <syzbot@syzkaller.appspotmail.com>
To: szymonwilczek@gmx.com
X-Spamd-Bar: ---
X-MailFrom: 3VExHaQkbAFsLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OZKFB73WPFRCMWWGAF3KSA2OAO7K5BQ2
X-Message-ID-Hash: OZKFB73WPFRCMWWGAF3KSA2OAO7K5BQ2
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:09 +0000
CC: christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, szymonwilczek@gmx.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix WARNING in dma_buf_vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OZKFB73WPFRCMWWGAF3KSA2OAO7K5BQ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2798];
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
	NEURAL_HAM(-0.00)[-0.988];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[googlegroups.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,gmx.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 417C6411743
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
> -- 
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion visit https://groups.google.com/d/msgid/syzkaller-bugs/20251220192210.399423-1-szymonwilczek%40gmx.com.

I see the command but can't find the corresponding bug.
The email is sent to  syzbot+HASH@syzkaller.appspotmail.com address
but the HASH does not correspond to any known bug.
Please double check the address.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
