Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBF7EbsrDGq0XwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:22:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CF98957B23B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:22:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6F51406A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:22:01 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 09C81406A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 09:21:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=sZw4W9dX;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-488e1a8ac40so32561545e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 02:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779182511; x=1779787311; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QoHvwM4p61ukSgPZjfDBcRJdrzaBcrrvLVu02xCIKiI=;
        b=sZw4W9dX94Zcxj4nLJLy/JAOnIZmF11zCptx79df0K444rX3BCn/3k6/wB/s88BeIo
         MzuUH0MPqBJLKwkXCIUm89+AlwjKORSu0juSfOPXiIpRIK3FTJiGioVXAdj6vk6NyJaD
         +p7ewhnNjrOCsJTOW+uDZ1i2PEFL83BjeYHAzaAAjnZQX3WO0LrmmtiPF8kEbK8HwVJF
         w+004kforGryESr6ZszZC1MCfUoK5gjt+m2FrX4hNiFjNKxMTLCPmQa0AX5CzQNbNxxR
         bIFaY3lT6P5kCvROZ0qJo2YgvoDWF9juY6E28MeWspnvubPACCkcLZ4fKBbdtcZom3Bz
         wZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779182511; x=1779787311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QoHvwM4p61ukSgPZjfDBcRJdrzaBcrrvLVu02xCIKiI=;
        b=RBz2imKR1Uz3+iySujl1Z+Rhw2cbH059DxOgSf4Fdn2w2qVqV/PcFqmLlhEtWr5o0O
         wJ/6rhFFJHb/7nT72hvJjVoCIxq5jtSHEDOsFFANBSP9hqeAjxzw2TaF4V0BxpyiRVy1
         rQ50YkgGtadsugWs5MEZaun9v8T81qQWnc5MCu4hrLaLAO5JSw6E9O0AAkEQnDwX5qia
         grzRvjZoLG+UchqhyoNW/C0JHqUDNUkROp9dz3e/0SKdh0mx0jiBc8zuSWGjNWhl0UkB
         QHKl7iaDT8qG8PXU+4BXdvY4/RD2uHti/uct3n7ex6kfC5/HYrVnN3wdNwOMjxAgHPPY
         +FOQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Cbah3Mjf7Dq0zViduUky2ex6wpQZT1RwGwGIfy4NispKN2djcGvISivYsCpYI00RQnwfx77Qqzq4VGC5u@lists.linaro.org
X-Gm-Message-State: AOJu0Yxat45yL9dRfHH7jwJOA7FESpQn+XZXpel7hL7zAp97APZYMN9i
	Vuzm3OCvN4K/n+a0T5B3nnxaJ0ZOyYTAxz+DU01KnQ3HXZp1xVfsX6o3
X-Gm-Gg: Acq92OGpV/+vUebc3Ifxzd9GIlEWjr9BWSw8+Am7a9uPVLuKRfKTS806pz0POK+J7GB
	PNtHsfLFIRAYSPz2KezlqCjbSzCUC4JSgk9qqEjkfJouAj2EdjibSfWGEFhTNNrD2MiXiueTrqY
	jly0l3CXiR6v+P6k7BR7x2DGGq/EDqqQ9vnaS5IcHTVia/UGaRHG9rwFW0nKAdmc+GoPOuB3KO7
	+dTdZOtvsMg1X4dcKF9n1GRE59sfbQo2AZl+3tTF7qrDb68uiY/ujZpuBL9rLtHeVXn7uL/29VH
	bDSQ9qPaG1diK16IRHAcmJl1dNf3UQgw/LSkkPvEhn+54O7Ttd1zK8KdA711DMGBamotgYdFEAV
	3Yke5njXYyWqokS6B61HZ2Fi6f7K7AOoxsTAx5nqgFbvFCTZltLuUytmC3JH+T246Xz8/zC7DNh
	U1nog/cXDZwP7yyCJj28hrz3NFMz569pn8tdo5pFiXpccdExyhAq3W7vf0U9GYZlwJRkNvd2p1l
	bc=
X-Received: by 2002:a05:600c:4f13:b0:485:30d4:6b9e with SMTP id 5b1f17b1804b1-48fe6328bb7mr321111245e9.21.1779182510799;
        Tue, 19 May 2026 02:21:50 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feab2a23dsm102576065e9.5.2026.05.19.02.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 02:21:50 -0700 (PDT)
Date: Tue, 19 May 2026 10:21:48 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260519102148.21d42afc@pumpkin>
In-Reply-To: <24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
	<646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com>
	<20260513081929.GD5477@lst.de>
	<24833f76-2289-4859-86d1-9215b11a1258@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: -
Message-ID-Hash: LLN6GCFMB5MTQWW6PWOWO6WS3NEYJ7NU
X-Message-ID-Hash: LLN6GCFMB5MTQWW6PWOWO6WS3NEYJ7NU
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LLN6GCFMB5MTQWW6PWOWO6WS3NEYJ7NU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: CF98957B23B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026 11:29:54 +0100
Pavel Begunkov <asml.silence@gmail.com> wrote:

> On 5/13/26 09:19, Christoph Hellwig wrote:
> >> +	if (!bio_flagged(bio_src, BIO_DMABUF_MAP)) {
> >> +		bio->bi_io_vec = bio_src->bi_io_vec;
> >> +	} else {
> >> +		bio->dmabuf_map = bio_src->dmabuf_map;
> >> +		bio_set_flag(bio, BIO_DMABUF_MAP);
> >> +	}  
> > 
> > This is backwards, please avoid pointless negations:  
> 
> I can flip it, but compilers tend to prefer the true branch. E.g. this
> 
> if (cond) A; else B;
> C;
> 
> can get compiled into:
> 
> jmpcc cond B
> A: ...
> C:
> return;
> B: ...
> jmp C;

I'm pretty sure gcc completely ignores the order.
Some very old compilers didn't - to the extreme of generating a short
conditional branch around a long unconditional branch to get past a
large 'true' code block.

likely() and unlikely() can change things, they are definitely useful
comments to a human (or Human) reader.

I'm not sure you can rely on the branch predictor to do anything sensible
outside of a loop.

-- David
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
