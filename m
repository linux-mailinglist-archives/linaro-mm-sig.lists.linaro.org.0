Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FEE8BE414
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 15:32:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 801DC3F346
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 13:32:32 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by lists.linaro.org (Postfix) with ESMTPS id 3679C3F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 13:32:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=XD+eR7Nt;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.180 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e242b1df60so38012751fa.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 06:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715088741; x=1715693541; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=huJibqJN85r8uyZHaWnhr5W8KxIdUNVSaNrUGy1RNcA=;
        b=XD+eR7NtpnIk0dSRDnQ7Nv3i31T0m5q85qNdK0oTBnCL3gON6jYIf67D0ZePmPFj9t
         rSEt2vKXCdvlA3U8S9v/dnh/VJJRjsyFBKgu75hJJ8ee/gc1bkx1gUC/+/E8Ef3tmJCb
         fgZBu3Hh4X1kgz9uapFmUFA+0dQlMp6idjkjYmCXHGSCcmXAGB8bmeleHH88Ns58S2O/
         CMkCLPmca0kfisjMSUO+dbmB7nniouUdP2PKWy6Tx1lhVKTzVvlsvGIRp2h0v6flMYi2
         /pgRpSGmRxB3h/zmzchUok4y6dWpsnjX0GF27xQTRJgrKUz6Xfisk8pTU49UWC0AC8uE
         hZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715088741; x=1715693541;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=huJibqJN85r8uyZHaWnhr5W8KxIdUNVSaNrUGy1RNcA=;
        b=DUEXwD3aWffrLr9IVQ8Whh6K2Tk5hXsVGUyUCgEtJaQuBsvGUYGGc2BqyaJYZoy1wn
         XX50UnEbuK67lPMmL9CZ+JgphPwePZSCRimqE/L/nBIdd314uLUGPPJNu+pdjw578GAy
         eEt8ZltfBBfdmQ4/YNAYOGf22ME42sD0nahZxs97p/hzuuJc17hPBwNjE8+Xw0FqYIuW
         ArYZXLdPVq+sWzs5lXc1wn0xUj6r+qEU7zt5U/e1kzRJp0XVz390MXiWp+7d01ZuiMCg
         Yfe+VN5KAlp/K4MYZ27YAMaemYMFcVCH3xYcQ7D0J6V0MD27dhBU7bxsOux8N+o3k310
         52MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUNntjH1ndtIOSh/PencMIifI8cl8eUb5QcVfEkmaBtTYzZnjG69dhuH1ozjS9eZwDxkmNMFxKFxAi3n5H2HAWHlYYQvAA8STtUdUgOy8=
X-Gm-Message-State: AOJu0Yxmt4HpLA4s3KmZac8SjQbOwg28S7IrZGusORIuDULSWd0s5Q0G
	QzQMZWRYgmzZdShBJgakqsb0o3jdeDI0H94qa1eRRRN7Mds5UhldKh7cRJmI9AWT1w==
X-Google-Smtp-Source: AGHT+IGD/JeQgTpquE7MLFJE26/XO1UVjUN5TKpuK/IVcoLAzeSx3fB3SA/M1rPKsXsUuic7yU+dKQ==
X-Received: by 2002:a05:651c:20a:b0:2df:dea1:5378 with SMTP id y10-20020a05651c020a00b002dfdea15378mr10307465ljn.16.1715088740904;
        Tue, 07 May 2024 06:32:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id i6-20020a2ea366000000b002e2b229d8d5sm1403183ljn.83.2024.05.07.06.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:32:20 -0700 (PDT)
Date: Tue, 7 May 2024 16:32:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3679C3F02C
X-Spamd-Bar: /
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
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
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.180:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2GU7YYRLFVSYNT5DIQFVR7IXBLWLKGKK
X-Message-ID-Hash: 2GU7YYRLFVSYNT5DIQFVR7IXBLWLKGKK
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GU7YYRLFVSYNT5DIQFVR7IXBLWLKGKK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 06, 2024 at 01:49:17PM +0200, Hans de Goede wrote:
> Hi dma-buf maintainers, et.al.,
> 
> Various people have been working on making complex/MIPI cameras work OOTB
> with mainline Linux kernels and an opensource userspace stack.
> 
> The generic solution adds a software ISP (for Debayering and 3A) to
> libcamera. Libcamera's API guarantees that buffers handed to applications
> using it are dma-bufs so that these can be passed to e.g. a video encoder.
> 
> In order to meet this API guarantee the libcamera software ISP allocates
> dma-bufs from userspace through one of the /dev/dma_heap/* heaps. For
> the Fedora COPR repo for the PoC of this:
> https://hansdegoede.dreamwidth.org/28153.html

Is there any reason for allocating DMA buffers for libcamera through
/dev/dma_heap/ rather than allocating them via corresponding media
device and then giving them away to DRM / VPU / etc?

At least this should solve the permission usecase: if the app can open
camera device, it can allocate a buffer.

> I have added a simple udev rule to give physically present users access
> to the dma_heap-s:
> 
> KERNEL=="system", SUBSYSTEM=="dma_heap", TAG+="uaccess"
> 
> (and on Rasperry Pi devices any users in the video group get access)
> 
> This was just a quick fix for the PoC. Now that we are ready to move out
> of the PoC phase and start actually integrating this into distributions
> the question becomes if this is an acceptable solution; or if we need some
> other way to deal with this ?
> 
> Specifically the question is if this will have any negative security
> implications? I can certainly see this being used to do some sort of
> denial of service attack on the system (1). This is especially true for
> the cma heap which generally speaking is a limited resource.
> 
> But devices tagged for uaccess are only opened up to users who are 
> physcially present behind the machine and those can just hit
> the powerbutton, so I don't believe that any *on purpose* DOS is part of
> the thread model. Any accidental DOS would be a userspace stack bug.
> 
> Do you foresee any other negative security implications from allowing
> physically present non root users to create (u)dma-bufs ?
> 
> Regards,
> 
> Hans
> 
> 
> 1) There are some limits in drivers/dma-buf/udmabuf.c and distributions
> could narrow these.
> 
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
