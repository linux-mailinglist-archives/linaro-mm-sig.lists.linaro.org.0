Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 205C88BEAAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 19:37:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 099684413B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 17:37:15 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 164333F346
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 17:37:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=AsMRUD4M;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.49) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-34cb2bf85easo354632f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 10:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715103422; x=1715708222; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iTbXjnapj66x1QFUTkR6VfpWY54bOGDZ0bq0kLD6kt4=;
        b=AsMRUD4MIRKsFMLNhruE0BarB0nFt3X+jrwtjqsA4shlRYJsyEGld3uHMbbWtPOjsY
         5c2nV5rnKq4tXTTCnETARQ6S8BCFDxOorWiqINQXd1c8BIlF/DBSuSsj8JEwhz3jK6i4
         +yGqgYQF4DwfEg/Ko5CkVaT1kJ+7gAX8rfN7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715103422; x=1715708222;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iTbXjnapj66x1QFUTkR6VfpWY54bOGDZ0bq0kLD6kt4=;
        b=eJnGOpzU8uOYv8cm55eFQw7Vs3cSivcGaDQhcZHL9SfYnAEQPVrrrV2bDjksK+8ltN
         DV+boDHwzOaSpm33M1bQ2hBUyTrxbk9D9tNuIIDgxpB3oCOlGMcp9ple+66orTjfBUuX
         l9Ad0UViSbotAnG9UH0NMP7WRCbTIdJ4lkW8A2Vr6jFpvUaRjvau7scPNECZlHomeoCa
         gtHtYgs0j9+chIUk9IqZ9pDORvXYnbog7ObSBedlVzwGK+/5jcChmwWa9whv9RRq1EPn
         7yWnuMFPn89+M+WJ3LxzbyJYdQSKr/TU8HKw4Sh4Y9Xv4zzegrqFaX7BSCh9umN1Y19k
         tQAw==
X-Forwarded-Encrypted: i=1; AJvYcCXVxg2oxxok4KuyOIRVWBAOhu6+4KpNSO+3ZLbOh+S2Sm+QHI23RRwUiq9KjoSgC9G27vIA2fJS7Oz/dh84sThMKJPg4rhhpWJU7qRnXhQ=
X-Gm-Message-State: AOJu0Yy95Jw0HjkJXYVWs81n6bqUny7UEebHemNbehNeNkPSQcec+d0X
	fbnoT0GB7zCbN0iY+QuqIsljME7wQw6ASelvHD6hob8OBMFP52U18K/Lt/DlEJM=
X-Google-Smtp-Source: AGHT+IGDlaVKfJNlzeSLiq8Rc1yJgYXIv7DO05/xB2F2BNXuulKK2r3ec8s1fdMs15n2a3dYFj8NMg==
X-Received: by 2002:a05:600c:3c89:b0:419:f241:6336 with SMTP id 5b1f17b1804b1-41f71302f62mr3477335e9.1.1715103422111;
        Tue, 07 May 2024 10:37:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id j13-20020a05600c1c0d00b0041be58cdf83sm20294246wms.4.2024.05.07.10.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 10:37:01 -0700 (PDT)
Date: Tue, 7 May 2024 19:36:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
Mail-Followup-To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>,
	Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Milan Zamazal <mzamazal@redhat.com>,
	Maxime Ripard <mripard@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 164333F346
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: JYY7AEQF7CUB7OITBDU7MMJ3CHY5TCL4
X-Message-ID-Hash: JYY7AEQF7CUB7OITBDU7MMJ3CHY5TCL4
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JYY7AEQF7CUB7OITBDU7MMJ3CHY5TCL4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 04:15:05PM +0100, Bryan O'Donoghue wrote:
> On 07/05/2024 16:09, Dmitry Baryshkov wrote:
> > Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
> > providing data to VPU or DRM, then you should be able to get the buffer
> > from the data-consuming device.
> 
> Because we don't necessarily know what the consuming device is, if any.

Well ... that's an entirely different issue. And it's unsolved.

Currently the approach is to allocate where the constraints are usually
most severe (like display, if you need that, or the camera module for
input) and then just pray the stack works out without too much copying.
All userspace (whether the generic glue or the userspace driver depends a
bit upon the exact api) does need to have a copy fallback for these
sharing cases, ideally with the copying accelerated by hw.

If you try to solve this by just preemptive allocating everything as cma
buffers, then you'll make the situation substantially worse (because now
you're wasting tons of cma memory where you might not even need it).
And without really solving the problem, since for some gpus that memory
might be unusable (because you cannot scan that out on any discrete gpu,
and sometimes not even on an integrated one).
-Sima

> Could be VPU, could be Zoom/Hangouts via pipewire, could for argument sake
> be GPU or DSP.
> 
> Also if we introduce a dependency on another device to allocate the output
> buffers - say always taking the output buffer from the GPU, then we've added
> another dependency which is more difficult to guarantee across different
> arches.
> 
> ---
> bod

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
