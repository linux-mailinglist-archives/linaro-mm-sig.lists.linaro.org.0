Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D7C6344A8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 20:34:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E22A3ED0D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:34:14 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by lists.linaro.org (Postfix) with ESMTPS id A41173EC65
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 19:34:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=CPzftK7v;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.175 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f175.google.com with SMTP id l2so9947649qtq.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 11:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gK4Hv+hqSXYYQhPJs2BourCuWSPOf2CqiS0ROx9Lxc8=;
        b=CPzftK7vuA/xYmMuEz95P61nJcTJe12hw3MBpezd1074VzPH8xTgyqV0FUaxEEJksa
         76E8WmyHAbWkclqEsxLZyw2K028d+6oeTL/GrVbXvbaep1xle3bCI/IIXbt14Y0jSeae
         hwFxUpR331wfRKiGtv00NJCgbCSjlwlkaG0f+J1hdhZjyqfzc8T5JlYUGLtO5RVxeXRt
         1uZY0cRWubIqaMorhSYTMqS9yvP45WenKnS+Ug0bOR3i2oIV+EV4Zeh/dcqaRWE8XTev
         /Fdlk5XmoTs+Ej2i8M3uHFhC0B7/BkSvQSjlFsw6fF+5LmOoJQmP6i77iWjxk70IJ0t1
         pZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gK4Hv+hqSXYYQhPJs2BourCuWSPOf2CqiS0ROx9Lxc8=;
        b=qRGLbwjExp0K61LKXOHY6CB6AVXkiaTxmBw0AVed8Dz+nnPPc5tt0yftZfFR8qyYVa
         XvRXoLEEkimYHT0oLN0Qx3LKhm07foY0QNE1sT0pHC3x4bDS9beI4EvOCO7nANbSj6da
         mZfQuBvqIlxmAIF6QZfaoWoFNb8JjbMneN8jMl32CtX6t7YYPr6r4o1GOmZMSKbB9O07
         E8ZXVJxf3CgkAFmN1m4X94RsnN7RbQHAYMG0Wo1DO5RA3nWF5jeUrElzm6lvMWScOvbT
         jX7evPhgguHKrIavc16D7nYavtGgdMpIHsqoYF3wjNMq6crF69/pBHtM2gxyKlv287Ie
         RD2A==
X-Gm-Message-State: ANoB5plXYz1nuPoT9STpaaXjghCxN7opTIby4ugeGuSpF681jucmILZ6
	HW10wXsvUyPkC0vI/hl/siJ9LQ==
X-Google-Smtp-Source: AA0mqf6itFyBYcobfUpRF0+IzeljS0J+Jfi+RUYvR39ErLilLCE/4r/HMIncmxqXwEdfvSrcmm2y1g==
X-Received: by 2002:ac8:1019:0:b0:3a5:42b9:d7aa with SMTP id z25-20020ac81019000000b003a542b9d7aamr23027660qti.58.1669145645365;
        Tue, 22 Nov 2022 11:34:05 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id ay20-20020a05620a179400b006faa88ba2b5sm10743137qkb.7.2022.11.22.11.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 11:34:04 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxZ1v-009xu2-IB;
	Tue, 22 Nov 2022 15:34:03 -0400
Date: Tue, 22 Nov 2022 15:34:03 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y30kK6dsssSLJVgp@ziepe.ca>
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch>
 <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
X-Rspamd-Queue-Id: A41173EC65
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.175:from];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.175:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PTRAURVXQC4PETLOJN6WW3KOJJXUP2KX
X-Message-ID-Hash: PTRAURVXQC4PETLOJN6WW3KOJJXUP2KX
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PTRAURVXQC4PETLOJN6WW3KOJJXUP2KX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 22, 2022 at 08:29:05PM +0100, Daniel Vetter wrote:

> You nuke all the ptes. Drivers that move have slightly more than a
> bare struct file, they also have a struct address_space so that
> invalidate_mapping_range() works.

Okay, this is one of the ways that this can be made to work correctly,
as long as you never allow GUP/GUP_fast to succeed on the PTEs. (this
was the DAX mistake)

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
