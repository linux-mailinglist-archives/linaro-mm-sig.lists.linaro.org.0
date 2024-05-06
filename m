Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2505A8BCF2F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 15:38:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CF3344170
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 13:38:43 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 8145C3F346
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 13:38:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=ZL57ct9W;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.52) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41c017ee8deso79495e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 06:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715002707; x=1715607507; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=05pEfdeTjP/gT4q1VDqtZ2Mm8b7W7bMEgQ0JTj2r+x4=;
        b=ZL57ct9WolaIRAJ/GzN+E+Z/AqxFI6jy3+Hq8iu9d8yUAsqzgHIIOXLOWofoxBnR7k
         BpSSe1PdUuforRP0lnKmMMtn055n6OkUpWFIndtBCJTyoaMlbhyekokiCVZtA5zXoiPT
         /MIebm4ZsLEooyACoAPDkF7Q3CLLufbNChjkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715002707; x=1715607507;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=05pEfdeTjP/gT4q1VDqtZ2Mm8b7W7bMEgQ0JTj2r+x4=;
        b=GaAyAOcNvlvPRew4/Moe6w53m451ynstIL+nTObX+a/GUHws5Xz9mzKrvByM716sM4
         ouyI9W913vLqWHIAzrLnmlbqrkxK3ICZUS/uTExepm2KdbjxY4sNQ8te8o0GjK4hN25N
         KnaOdoOxGhSq3Vpy5szlgRcjKFcVEub0lVLyZty+0IKmRErcWwXpwuvtS4cwR+wdHWjl
         c1VVS/U2GnTn1SAEMClQQrmsKpvp3GjLw1Uqgkbqe3Q5z6PMemZFurgxrERZMGA5ucgx
         jqcjz+6e1lPU8+UO6/S8mBMb/Uo94q7LA4zXooh2iwhb1v5nqHdzOfx75UcYHnXX2Iah
         EYsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAyM2o3ECTpBbwy57Jv+vy7PQg1JbPvre9/jn1ZBsImEvylL1HuAR9dohE5LXttUQzSWv+stMH1Mum232Z5y7jOAXncAFGgwODWD6Q018=
X-Gm-Message-State: AOJu0YypH8him3ypiH1B9KyrkdwykS2ETbYzPqAx3/HcRcyY1hacaRPL
	++alkd4yapQ1MA0iKMTQUGgwlkFGiHp36NEccggbSz343+bYkvVhwOyTHvZj4lY=
X-Google-Smtp-Source: AGHT+IH7ayM64/spWVTg0bt9PNCN0djXyEwU/JmnpSrNT6A7B8ioiDdqWIOL0raGgmZcVRIsEpla+w==
X-Received: by 2002:a05:600c:46cf:b0:41a:bb50:92bb with SMTP id q15-20020a05600c46cf00b0041abb5092bbmr7391993wmo.0.1715002707370;
        Mon, 06 May 2024 06:38:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0041bd85cd3f2sm16051523wmp.19.2024.05.06.06.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 06:38:26 -0700 (PDT)
Date: Mon, 6 May 2024 15:38:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
Mail-Followup-To: Maxime Ripard <mripard@redhat.com>,
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
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Milan Zamazal <mzamazal@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240506-dazzling-nippy-rhino-eabccd@houat>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8145C3F346
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim,dreamwidth.org:url,mail-wm1-f52.google.com:rdns,mail-wm1-f52.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3T5RGIEN6A6GQ4SPQTUZHWQORCI6E5GA
X-Message-ID-Hash: 3T5RGIEN6A6GQ4SPQTUZHWQORCI6E5GA
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3T5RGIEN6A6GQ4SPQTUZHWQORCI6E5GA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 06, 2024 at 02:05:12PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Mon, May 06, 2024 at 01:49:17PM GMT, Hans de Goede wrote:
> > Hi dma-buf maintainers, et.al.,
> > 
> > Various people have been working on making complex/MIPI cameras work OOTB
> > with mainline Linux kernels and an opensource userspace stack.
> > 
> > The generic solution adds a software ISP (for Debayering and 3A) to
> > libcamera. Libcamera's API guarantees that buffers handed to applications
> > using it are dma-bufs so that these can be passed to e.g. a video encoder.
> > 
> > In order to meet this API guarantee the libcamera software ISP allocates
> > dma-bufs from userspace through one of the /dev/dma_heap/* heaps. For
> > the Fedora COPR repo for the PoC of this:
> > https://hansdegoede.dreamwidth.org/28153.html
> 
> For the record, we're also considering using them for ARM KMS devices,
> so it would be better if the solution wasn't only considering v4l2
> devices.
> 
> > I have added a simple udev rule to give physically present users access
> > to the dma_heap-s:
> > 
> > KERNEL=="system", SUBSYSTEM=="dma_heap", TAG+="uaccess"
> > 
> > (and on Rasperry Pi devices any users in the video group get access)
> > 
> > This was just a quick fix for the PoC. Now that we are ready to move out
> > of the PoC phase and start actually integrating this into distributions
> > the question becomes if this is an acceptable solution; or if we need some
> > other way to deal with this ?
> > 
> > Specifically the question is if this will have any negative security
> > implications? I can certainly see this being used to do some sort of
> > denial of service attack on the system (1). This is especially true for
> > the cma heap which generally speaking is a limited resource.
> 
> There's plenty of other ways to exhaust CMA, like allocating too much
> KMS or v4l2 buffers. I'm not sure we should consider dma-heaps
> differently than those if it's part of our threat model.

So generally for an arm soc where your display needs cma, your render node
doesn't. And user applications only have access to the later, while only
the compositor gets a kms fd through logind. At least in drm aside from
vc4 there's really no render driver that just gives you access to cma and
allows you to exhaust that, you need to be a compositor with drm master
access to the display.

Which means we're mostly protected against bad applications, and that's
not a threat the "user physically sits in front of the machine accounts
for", and which giving cma access to everyone would open up. And with
flathub/snaps/... this is very much an issue.

So you need more, either:

- cgroups limits on dma-buf and dma-buf heaps. This has been bikeshedded
  for years and is just not really moving.

- An allocator service which checks whether you're allowed to allocate
  these special buffers. Android does that through binder.

Probably also some way to nuke applications that refuse to release buffers
when they're no longer the right application. cgroups is a lot more
convenient for that.
-Sima

> > But devices tagged for uaccess are only opened up to users who are 
> > physcially present behind the machine and those can just hit
> > the powerbutton, so I don't believe that any *on purpose* DOS is part of
> > the thread model. 
> 
> How would that work for headless devices?
> 
> Maxime



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
