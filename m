Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOzzD5rsCmo89gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:40:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE11256AD6A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:40:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFFCB406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 10:40:24 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id C2CF140475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 10:40:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rZDHTdgJ;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48909558b3aso22780795e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 03:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779100813; x=1779705613; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBUJm1g4jrVLHLARnQ410xCyIfZ2+knqUA7xvFczZVo=;
        b=rZDHTdgJb+l2jMs/mWa0Ytq6eAeTkPARLbhkjUOyj0rGpD6q8IF+Xmhr0iANHpHjI3
         aFXRywjGHZr3QwqIz/P26srW6EUI32yMG4qIPIm4e3XkChd5SDhHzZ30eCiXQNeutNEz
         MTJVWr07i4gXnjyEOk1MFRlJ2IV6VeGNzNW1Wpm9nGebhhOXOSKWbTcP0HyQsgTY/8qg
         7Gp9cUzAqjCH5wHJL6yhM537Ap9iMHwDSynAwJ9I36ZXlf7URGNpN/xGGg5jzXaIE3xS
         7ARPaoD+vDvywOBuO4ZsM9KWvtG0YdCmGu6rFggGGR/k0TdZ/UmlAqdFwnIzxiN8n2Z4
         OS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779100813; x=1779705613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KBUJm1g4jrVLHLARnQ410xCyIfZ2+knqUA7xvFczZVo=;
        b=Cigr44W/l7g6p4nwVBvOh5oHHHMTljdIMGuMTVCwzlG1tfz/m90ckMhSwpf2vuaj8B
         D6abGPYO3YZl4vdEZ4Mt4tTwjU7MbR0Hxqo/DF4ahTH294ZDuikdAmtikdAHXXDpuczO
         deV23ORgbmioG/nzoP8I28CEoEdjDEw0/oYH4MzaondMO1nrHAyJnnod1la/xqqF5/Qb
         1SdjyuZUTYtIHjrqFPGRhGXA965Cf1fKSl+4glQN8FvkL3ZHsn0RoiiSo/sySCyV0MZ9
         EVdDqB6wCvsl1hX6etC6tJBle08GnZgX4uCbDNEGactsJC4ASUtbzPrpK404EHNyr3qr
         j33g==
X-Forwarded-Encrypted: i=1; AFNElJ/60uuxb6zBz6xR694UXWTbAS8OovRWqGLJ5U239RGMfRGVvdglkcBeWoih7yg2V2TNgg8vVfcBnn81Y0n0@lists.linaro.org
X-Gm-Message-State: AOJu0YyHKRt7+ThTuGdYVg4mmkd2HUGy8wU/goUqAVPNGBgh28ppaqjQ
	dxkHlMraHnZWcs0hRSC/KNFvl0uHCXOLDPaPp0puekWn0Ueuw07BLi1z
X-Gm-Gg: Acq92OFwSh8OWBlc0TiFTA4TWzVW+7LHpiVaH9GO2JxIbBlkO78IAoSVvrx9Cw9FW11
	OytIzG9ST6kUI5tIdq2BnIH/cqswgjwHjihsEkt7Ss5AEO5bdBhczWiXpvTy4u7QjWh6iMEu8ww
	peQL40PiQXKmIS/Bo+zDMltt54hXC3tpZbQCavE7igOqLvDuAnUuJS5iwK3WRNSDgv89bQcYzSo
	uXnZ1e26GyJN6IiLqntwxzkoW6JeY8PmRehDiO14ZixHh2krVMFfLzhyL6MMpsDwRg7YMWeSECL
	UuJ5nMyn15wRLX9TOEb7mpte9AMZr8Q2InF5yZzNuO5Ddx8qNioHcFpl7h+sL4Sg04Ni6NWV0rr
	keCJDiaUBR9Ur9Oee1DLSMitrwO5cjThX+1K1ykbbjg/7OlkbFlSOiv9cbdX8sfQzQ9NW+UTvby
	vnafb5exBQnR3Aj7AObjmhKxzMR85T6rVOXU4HgC1y/yjETb885P8vip++ANmkLC+lo2NxlhVF4
	LUFs7dIMNlqrA==
X-Received: by 2002:a05:600c:4fc9:b0:489:1c1f:35df with SMTP id 5b1f17b1804b1-48fe60e58ecmr202920365e9.10.1779100812550;
        Mon, 18 May 2026 03:40:12 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4c90b27sm255713955e9.8.2026.05.18.03.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 03:40:12 -0700 (PDT)
Date: Mon, 18 May 2026 11:40:10 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260518114010.6e1f7391@pumpkin>
In-Reply-To: <4b2f74e9-3225-47f6-85fe-911720030e35@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
	<20a233d2f35274817aa643cc0fe113707eb47e72.1777475843.git.asml.silence@gmail.com>
	<20260513110557.705bdeed@pumpkin>
	<20260513142909.03ae6c2b@pumpkin>
	<4b2f74e9-3225-47f6-85fe-911720030e35@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: TRSIT4ZMKWXEDFVJCNAF5H357Z4A2JPR
X-Message-ID-Hash: TRSIT4ZMKWXEDFVJCNAF5H357Z4A2JPR
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/10] iov_iter: add iterator type for dmabuf maps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRSIT4ZMKWXEDFVJCNAF5H357Z4A2JPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: CE11256AD6A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.434];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On Mon, 18 May 2026 10:24:35 +0100
Pavel Begunkov <asml.silence@gmail.com> wrote:

> On 5/13/26 14:29, David Laight wrote:
> > On Wed, 13 May 2026 11:05:57 +0100
> > David Laight <david.laight.linux@gmail.com> wrote:
> > 
> > ...  
> >>> @@ -575,7 +575,8 @@ void iov_iter_advance(struct iov_iter *i, size_t size)
> >>>   {
> >>>   	if (unlikely(i->count < size))
> >>>   		size = i->count;
> >>> -	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i))) {
> >>> +	if (likely(iter_is_ubuf(i)) || unlikely(iov_iter_is_xarray(i)) ||
> >>> +	    unlikely(iov_iter_is_dmabuf_map(i))) {  
> >>
> >>
> >> Doesn't the extra check add more code to all the non-ubuf cases?
...
> >> or writing an iter_is_one_of(i, ITER_xxx, ITER_yyy) define that uses
> >> '(1 << i->iter_type) & ((1 << ITER_xxx) | ...)'  
> > 
> > This seems to DTRT:
> > 
> > #define _ITER_IS_ONE_OF(iter, t1, t2, t3, t4, t5, t6, t7, t8, ...) \
> >      ((1u << (iter)->iter_type) & ((1u << ITER_##t1) | (1u << ITER_##t2) | \
> >          (1u << ITER_##t3) | (1u << ITER_##t4) | (1u << ITER_##t5) | \
> >          (1u << ITER_##t6) | (1u << ITER_##t7) | (1u << ITER_##t8)))
> > #define ITER_IS_ONE_OF(iter, t, ...) \
> >      _ITER_IS_ONE_OF(iter, t, ## __VA_ARGS__, t, t, t, t, t, t, t)  
> 
> We definitely don't want that, using them directly would've been
> much cleaner.
> 
> if (get_type_mask(i) & (TYPE1 | TYPE2)) ...

You need to shift all the TYPEn as well.
The above condition would become:
	if (likely(ITER_IS_ONE_OF(i, UBUF, XARRAY, DMABUF_MAP))) {
which reads reasonable well.
Without the token pasting it becomes:
	if (likely(ITER_IS_ONE_OF(i, ITER_UBUF, ITER_XARRAY, ITER_DMABUF_MAP))) {
and the line starts getting long.
Although that version probably needs a check that the mask is constant.

-- David


> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
