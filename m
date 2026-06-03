Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5TV0CE/tH2omsgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 11:01:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B83635F3B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 11:01:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=WXj4ZHwG;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B0D9409B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 09:01:00 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 75B8840981
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 09:00:19 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-beb44f97561so477017266b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 02:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780477218; cv=none;
        d=google.com; s=arc-20240605;
        b=BeN9Y+qnmbIG3ynog3QBZZhpA7+NKsKEnQT/XF04o4BVvae4VvtkPjyusAWHa3y7Yl
         54i3o1qKwNSS86iEGVsXKeQTs8w6gNpI08wPB8H/HjychMI2nM7LrSuj6DfT01V+uAOi
         9Fvj3RgedJeug1B0o9zAwt9IdDsMDBBrx8pS2keoBxymVQlTJRKlEJTJq89Z50zVAJAm
         l2L7rd8xLPPaK8oH4RgyYN4ZcNMUHwS8U4fYUQvL/RmF8aEVhaciIat8kjY2IUmw887G
         4ddEJDx1NveosDaGRFzuTq+OxfG477VCYxsGv+HKEr/dkWImOHt/VILFpFOl4TAjF24j
         rYxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jzuby2umJ58JZM+JS4EAdHZjjbUUQ/puGed5+FBLJt0=;
        fh=me2rLRso81kGITuOWvlNhnOb3gelq2bQr1BQaGeWkxw=;
        b=NzgKpmUz/shn2G3I9vntnK6rdzhnNKgymShlVlhljLd2puybsWFdezvok3T/b/hshH
         nHTk5kJ18yONkXFT5/eJMtqNOGHdg3xe+MdqX+C/cZhd9f3BVA0PXui74EEXZ7WdYCoe
         uhf9GJgYH+9+SfvqwiS31X7r8QFrCXjSUgAwQG0TmctJmmSglrbxajvfSkGLIy9eD0BP
         Xpmy0d9ICKc9ALIWsEh17UaBFX0OjQF7+Z6tzwzybdke1oWUay9BkGem/QCY1L6uqK5j
         zLtx+boD0raQe0TBR1hAPHw3FwIMT3m6mD9+XoMA60dwH0A0hhJzk63DGncSWxTop3CX
         YcKA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780477218; x=1781082018; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jzuby2umJ58JZM+JS4EAdHZjjbUUQ/puGed5+FBLJt0=;
        b=WXj4ZHwGMlRt/s509C8CcuJdHHocwiQHiXlBietAxKaIzD2hvyXSDu/6okJFAexlus
         6V3rXBHvylQlecyugmaoq5KLtQ1qllb2eCHsBRkyv9uuivsb1QlBX4MJi2Dhqx+m7/Wk
         /xbDjQY5Cnk9jn6L5txCNxRiDOMvXg3zfGzEoewf88RA++m/eMXqybKEibI7FJ9ES0TQ
         WWHwAz3H4qrife+ZAVNw6OJne/El3Xm4a0HxhSNwcVNpo3APmgLyiZMwxxB15LIGcuh7
         /u6Si0feBZHuvVZR9eHgJURWTGaHgXC9HH81d6rvWRiXFmMlneP3uoSiYVXtE1K4SkFM
         +muQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780477218; x=1781082018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jzuby2umJ58JZM+JS4EAdHZjjbUUQ/puGed5+FBLJt0=;
        b=PdPes0TZHGyuk0gXX8jnBgaI7i6SmDhe+4O197XObYFZ/OXiY3L7gFiXYx6NfkanJg
         Yeeo7jz4SzB7PctvX4rFlCoVkJePqkrHNffIz9zwQgWyebag2xBjjsDqjUZwDlH38fVq
         hIzZNwU1LEiqY2LUM+YhoG3WLPZStQTZLVjiqYeABgyEz06dcfeAkxXHBt+ta7e5+G/L
         v1QrfwdwNcmzmpiPI6PWjoPxLSHVi0TknwN1FPH5vVAvV0IjVJ0WhopOCt8pcaKyceVJ
         8HRnwAhTIw0KVcJhv0TJZWoZMNgC2gOelW23rIum32HJwKdBvd0cLV9HczUUOW3AviQ1
         uHQg==
X-Forwarded-Encrypted: i=1; AFNElJ8Z//SOtbVmpZMkeCTRpXA5tZxAdloD9OHhFd44L8MXAWx1RQyX0O0BVrjMm18SNpa0FaYS40AfCI6fkXFR@lists.linaro.org
X-Gm-Message-State: AOJu0Yxx3CsS2tPZGz1VMT9AmE5rv7hZxmNW1zldDegUyu8FqqiMquyZ
	U4nH7G5WcwTq+rgbTNRaX94UpbqoRtVtP3lB4CdVOK2fZ7T3AlPNT+zwetz6r2IpiQPnClz7UF5
	g7Yh/dMA7uO5G+uz6/1Dc3qn3rJhVFkT1y7AzxLaMDUTJ
X-Gm-Gg: Acq92OGmh2dHWIaSA3bPCEtQksicmMu4WUcDdRunlnLvijwBEVj/+kcXl4lMJewJJ95
	ourMm2r6i69v5ZOC/wvBVC95Jf9yPJBvX7Ctx2A2JXBNjURZNQWH+xR2dyqsNqUcOhTihgFtGk9
	2FwUNQyPBX+g6gCn3v3BHUXVg3tW7FIkF8KRpxx5u+hHA55sv+OQNXCdpxul6fXATZ1+19IoWs0
	nw7vU6vGcvhdkmQKOhGDRfLa8qxnW1zk1b8m2x0HfbI6B6IvafFVarThJ3g0PzY4pXDQR2ON+uJ
	jYZBnbB2QzxokDx6xY5Kyk50OJy9krN4wiEfAjyjS6O/2tq+HYrR9knrBw==
X-Received: by 2002:a17:907:86ac:b0:bb8:fd88:f400 with SMTP id
 a640c23a62f3a-bf0a97083b9mr124305866b.21.1780477218276; Wed, 03 Jun 2026
 02:00:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260517172352.3615-2-thorsten.blum@linux.dev> <ah9cwXA2CO5VB6Kf@linux.dev>
In-Reply-To: <ah9cwXA2CO5VB6Kf@linux.dev>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 3 Jun 2026 14:30:06 +0530
X-Gm-Features: AVHnY4KggjhwnZqqk9ax1UCTzRTZe5T2OHJLulQOs1YKwvmbLelqVZK9U3zAOh0
Message-ID: <CAO_48GFrqMzqPJrXU8wKZNUKX083n1ef8163Yx0mkjS86DcJcw@mail.gmail.com>
To: Thorsten Blum <thorsten.blum@linux.dev>
X-Spamd-Bar: -----
Message-ID-Hash: KDNWP3XQYVBTOZXLSMGC74FUM5V2NI52
X-Message-ID-Hash: KDNWP3XQYVBTOZXLSMGC74FUM5V2NI52
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v2] dma-buf: heaps: use max3 in dma_heap_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDNWP3XQYVBTOZXLSMGC74FUM5V2NI52/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:thorsten.blum@linux.dev,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3B83635F3B

Hello Thorsten,

On Wed, 3 Jun 2026 at 04:14, Thorsten Blum <thorsten.blum@linux.dev> wrote:
>
> Gentle ping?
>
> On Sun, May 17, 2026 at 07:23:53PM +0200, Thorsten Blum wrote:
> > Replace two nested max() calls with a single max3() in dma_heap_ioctl().
> >
> > Reviewed-by: T.J. Mercier <tjmercier@google.com>
> > Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
Apologies for the delay; its now pushed to drm-misc-next.

> > ---
> > Changes in v2:
> > - Include minmax.h as suggested by T.J. Mercier
> > - v1: https://lore.kernel.org/lkml/20260427172519.417333-3-thorsten.blum@linux.dev/
> > ---
> >  drivers/dma-buf/dma-heap.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index ac5f8685a649..d49188893608 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -13,6 +13,7 @@
> >  #include <linux/err.h>
> >  #include <linux/export.h>
> >  #include <linux/list.h>
> > +#include <linux/minmax.h>
> >  #include <linux/nospec.h>
> >  #include <linux/syscalls.h>
> >  #include <linux/uaccess.h>
> > @@ -153,7 +154,7 @@ static long dma_heap_ioctl(struct file *file, unsigned int ucmd,
> >               in_size = 0;
> >       if ((ucmd & kcmd & IOC_OUT) == 0)
> >               out_size = 0;
> > -     ksize = max(max(in_size, out_size), drv_size);
> > +     ksize = max3(in_size, out_size, drv_size);
> >
> >       /* If necessary, allocate buffer for ioctl argument */
> >       if (ksize > sizeof(stack_kdata)) {


Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
