Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A56EE8BE701
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 17:09:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B301D447E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:09:26 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by lists.linaro.org (Postfix) with ESMTPS id 36D653EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 15:09:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Li+diQAY;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.47 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51f0602bc58so5312476e87.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 08:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715094555; x=1715699355; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ApmnaGazi/o+2qAXdIqqO3f0hkV/MV/lnHoUUZ1Ogfk=;
        b=Li+diQAY/yXoujVafLxzhwmRFqlYorWoST37apR7RgTlCxapNmHQBKxniba9KMPRcg
         mWdnqNkW3AM5iURTdCwpE+XChHIDzbKSWiqCroGCpvX/cBdCxTyfL250dHcwCL9jK6fG
         4IX1m2FrGCL933bWYb0kYJH7vwe654rmeTxV3Cf2snoDYEtcZBua7mxoDMwJX2N/zIDd
         0ofNRL11FqrVEONSrRxsBJpcaEP/IkYBTr/vG1DI+skq4oLKwwQtk3wTf7k6rvFFvLbH
         UUAKRSc5ETc+TNxSvILT0SQ4/QQ5hABd7MqQO5tECsDz9qPDfPo/JtB+2jaBcrQlurZH
         l2RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715094555; x=1715699355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ApmnaGazi/o+2qAXdIqqO3f0hkV/MV/lnHoUUZ1Ogfk=;
        b=A6RRY//2yuhzihkqF6QFAgNAHOlVHLjn7jymDQ8IebNKG9P+UfzrXzYsz3B/qibkGa
         Fu1SpnkrY+eTWq2h5uiYEBU6aAvNS0ZAo1lxRT7M1Xlyv6UJIR1nacUkTHxSbgX1GZvW
         lL1TRi5UuhZgWbHp/gdrIHOVcP4uiWeUW/3YbjX/OsCWAXwhz2lP+z25bINXG55sRwi6
         rsSK0K3SM/leqWu17nOHefWkGUZOB0D1M7aAJMOOdDKZmLRgEFSNKDRHW724EDrJAVkQ
         8UkMmRmgHF/BqK1g8v0ZzLkC5V/kdC/d3hyl/opNal6edTBw9w4TyANPE3/ty1HIDvHg
         719w==
X-Forwarded-Encrypted: i=1; AJvYcCWEUggnn1ZZbc+MSaqmBQJvvHonO94uNTzLTYj28jNMj+mgryEETyBPPSqmbHSST8CTWJj9Gfo5R66N/VzN/ictlbrcXMIAVdX+SL9ycOA=
X-Gm-Message-State: AOJu0YyblIL1zT8IP/OP8XJLG1Z83WBD3mZYgZ4XSK+4UCCOqy1XCFtM
	vALfG7kRSABgewkCRwEkaOuf7lx0SpYcC9xQXSx57jO1GNx4xQZwIldBcbadGqmFRw==
X-Google-Smtp-Source: AGHT+IFpsJSfGLwS1hXqc0H0trd4MGTiP4vo11gPFrTKC7JHOIUnEb9JodJJuvbqXdQX62FwbtE9XA==
X-Received: by 2002:a2e:9598:0:b0:2e2:3761:2ef5 with SMTP id 38308e7fff4ca-2e3d956847dmr9646361fa.14.1715094554850;
        Tue, 07 May 2024 08:09:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id r16-20020a2e8e30000000b002e35b79a00bsm935940ljk.124.2024.05.07.08.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 08:09:14 -0700 (PDT)
Date: Tue, 7 May 2024 18:09:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 36D653EC0D
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,redhat.com,gmail.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.167.47:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.47:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: DYFD6QLXLKXSQQMSUI2FMMDI7YFNY3JZ
X-Message-ID-Hash: DYFD6QLXLKXSQQMSUI2FMMDI7YFNY3JZ
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYFD6QLXLKXSQQMSUI2FMMDI7YFNY3JZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 04:34:24PM +0200, Hans de Goede wrote:
> Hi Dmitry,
> 
> On 5/7/24 3:32 PM, Dmitry Baryshkov wrote:
> > On Mon, May 06, 2024 at 01:49:17PM +0200, Hans de Goede wrote:
> >> Hi dma-buf maintainers, et.al.,
> >>
> >> Various people have been working on making complex/MIPI cameras work OOTB
> >> with mainline Linux kernels and an opensource userspace stack.
> >>
> >> The generic solution adds a software ISP (for Debayering and 3A) to
> >> libcamera. Libcamera's API guarantees that buffers handed to applications
> >> using it are dma-bufs so that these can be passed to e.g. a video encoder.
> >>
> >> In order to meet this API guarantee the libcamera software ISP allocates
> >> dma-bufs from userspace through one of the /dev/dma_heap/* heaps. For
> >> the Fedora COPR repo for the PoC of this:
> >> https://hansdegoede.dreamwidth.org/28153.html
> > 
> > Is there any reason for allocating DMA buffers for libcamera through
> > /dev/dma_heap/ rather than allocating them via corresponding media
> > device and then giving them away to DRM / VPU / etc?
> > 
> > At least this should solve the permission usecase: if the app can open
> > camera device, it can allocate a buffer.
> 
> This is with a software ISP, the input buffers with raw bayer data
> come from a v4l2 device, but the output buffers with the processed
> data are purely userspace managed in this case.

Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
providing data to VPU or DRM, then you should be able to get the buffer
from the data-consuming device. If the data is further processed by
a userspace app, then it should not require DMA memory at all.

My main concern is that dma-heaps is both too generic and too limiting
for the generic library implementation.

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
