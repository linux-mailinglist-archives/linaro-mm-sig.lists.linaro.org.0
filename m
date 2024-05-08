Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F135E8BF8A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:36:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C0AF43F5E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:36:23 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id AE82F3F3A6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:36:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=eoZHNKsO;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59a0906a7aso115411466b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 01:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715157370; x=1715762170; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J7aS9he7xY72nZNIRe7yyrnZe3tp43pBLnMfxlD1rnU=;
        b=eoZHNKsONqPKjdFgwnIUipdhwCSpp8iLfsDHGdOAQDHcLQQecqP37aOdM+1JITItD7
         aaJGePqXii97cNSl6okc1rcMr2GoiOFfpOt2NeFAwxGchl3CGYtgS4h6VmuaohqEIWoc
         4EPZVbrBcGpO+AGRdm0Ixo2R2DZR01lfSWZQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715157370; x=1715762170;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J7aS9he7xY72nZNIRe7yyrnZe3tp43pBLnMfxlD1rnU=;
        b=go0sYb1/jqmOQ+livJacXlmwSt2H0GBliM2xUOBP4NW3qa5jSs25yhPfDHzwjxySsz
         QdaSppDbjiNLAqRr4EswASBSk5vVtJfiwJF87ojqRlFD8hEPpfhMt1SLetO6+myZ7Us8
         B3Y/SpFfN44YwK3wX9u8JTUnhOq8v2B1W+qlOaIfN+b4NhEirwieltbwcc4cM0TTZvpM
         J+o3Zb6uH3w08z8HL0IhxJmouyzlMvxfbEf5R9gSPijN19Hbi/RjwCmQJChL8jYAHrqP
         T2Dlmtq2I4Fzd/3mKU6YMDU5junABhJInPzlXeB32dfXkEABdzaBozmxrgDUhAR50u0G
         /iXw==
X-Forwarded-Encrypted: i=1; AJvYcCUj9W2C4chh5OmS5yE7/ETk5KM2CNTcJepNLZnFEtPTU/tLcngVWZrenHliG/NP6DfACjhhq6RVN5FgnDRBJeXvWN5kZvAyhH50aHMp1tA=
X-Gm-Message-State: AOJu0YyY7dKladNRX13kJ0H2/dEjE98DhYdC/7I44s/9AbMG247Nq1te
	K1ytV7aE2bBZOJCz4DF+V9s45bSarmaIdzPj0YzPdNp/6xVkTFAyNa+iDn73KHA=
X-Google-Smtp-Source: AGHT+IH9OKR3iRdAQokCHL9Wcm9g2S3grKMxIcHFTiTEbekRGm3HeABSdlBjlaSiS4k5yg1zHyrUcA==
X-Received: by 2002:a17:906:3113:b0:a59:c46b:c524 with SMTP id a640c23a62f3a-a59fb7107bcmr140268666b.0.1715157370636;
        Wed, 08 May 2024 01:36:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id gc21-20020a170906c8d500b00a59a7bac0easm5214354ejb.164.2024.05.08.01.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 01:36:10 -0700 (PDT)
Date: Wed, 8 May 2024 10:36:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-ID: <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
Mail-Followup-To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
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
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AE82F3F3A6
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.86 / 15.00];
	BAYES_HAM(-2.96)[99.81%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,ffwll.ch,linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BOBFT2J7PMWM7OMMSCGXQGJYEQB2F3RT
X-Message-ID-Hash: BOBFT2J7PMWM7OMMSCGXQGJYEQB2F3RT
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel@ffwll.ch>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOBFT2J7PMWM7OMMSCGXQGJYEQB2F3RT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, May 07, 2024 at 04:07:39PM -0400, Nicolas Dufresne wrote:
> Hi,
>=20
> Le mardi 07 mai 2024 =E0 21:36 +0300, Laurent Pinchart a =E9crit=A0:
> > Shorter term, we have a problem to solve, and the best option we have
> > found so far is to rely on dma-buf heaps as a backend for the frame
> > buffer allocatro helper in libcamera for the use case described above.
> > This won't work in 100% of the cases, clearly. It's a stop-gap measure
> > until we can do better.
>=20
> Considering the security concerned raised on this thread with dmabuf heap
> allocation not be restricted by quotas, you'd get what you want quickly w=
ith
> memfd + udmabuf instead (which is accounted already).
>=20
> It was raised that distro don't enable udmabuf, but as stated there by Ha=
ns, in
> any cases distro needs to take action to make the softISP works. This
> alternative is easy and does not interfere in anyway with your future pla=
n or
> the libcamera API. You could even have both dmabuf heap (for Raspbian) an=
d the
> safer memfd+udmabuf for the distro with security concerns.
>=20
> And for the long term plan, we can certainly get closer by fixing that is=
sue
> with accounting. This issue also applied to v4l2 io-ops, so it would be n=
ice to
> find common set of helpers to fix these exporters.

Yeah if this is just for softisp, then memfd + udmabuf is also what I was
about to suggest. Not just as a stopgap, but as the real official thing.

udmabuf does kinda allow you to pin memory, but we can easily fix that by
adding the right accounting and then either let mlock rlimits or cgroups
kernel memory limits enforce good behavior.
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
