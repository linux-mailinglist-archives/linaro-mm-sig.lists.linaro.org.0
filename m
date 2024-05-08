Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3D8BF899
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:33:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8665C3F3A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:33:45 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id 9B32A3F3A6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:33:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=CcRMgOSe;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.167.51) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-51f101b5d3bso703532e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 01:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715157211; x=1715762011; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6y4EwFqVETg6O9C1VDyvCbQ1UYKFlViM3dNLmDxh+rE=;
        b=CcRMgOSeSRsqYo6Q1TgPYQvWrzNcEdGdi7MvNMtK/9o/MfYZv0B7EcdfhPMgqO3E2V
         FDMDBLsJzboLUYokQLJnZ5RswTpSipcGX/YzCXEneeWXovhzFhoKisUFSFKW9kHEC9LO
         r4GjSVKGPf8BZurlOnS0KYFBmBnbQN04VPTU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715157211; x=1715762011;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6y4EwFqVETg6O9C1VDyvCbQ1UYKFlViM3dNLmDxh+rE=;
        b=LuDrdNkoZSEYQLi1tGz+RtgQ+KSieC60n1nW7LqgoaN4osLepPJkN0mJb7fKi3jTNe
         ipUHL75gSh8od29K7H2tRTeAU3TSdEuMxapZFTGyxvkaMv+C+44U9i0c4imCD3qeNZhs
         kQQdt+WRO0I0uEDRGJLiO2YXvorFrNBDSaXaonGbqZXtFan6lvbSmJ5WKplLWWHrKccg
         eOi05F/IcPVg+nAI7ebNnBM52jryvn+UFRR8bjbs88OpDXsEfZPxyelQML13pqMFUYTF
         9277+RX9dvug81FfTgcpP3rwY/zF09hN7CRxw/PkqN9TyC3aM4GrNVdR/1oikbJy4z9n
         FFQw==
X-Forwarded-Encrypted: i=1; AJvYcCUrSOo0PmuBCS4G4FSYhRk/x34JRmur7a/H6uyKUpyN+qiVHCvmC63WzE0be04Q4x+uzrFVYvoXy0zPF5a8+C8KsZnPINwU9x/SofuZ8Rk=
X-Gm-Message-State: AOJu0Yz1j8Gn5aqLwY/KtEticVVbl2PfMGNRWbutqQX/ixszAVV+b+pF
	zt/3LyHBO8evFCYv9LMGUla2uZ6kQoky6Xjs2uF77VUyZoFxVP4ISnWcMggWDNo=
X-Google-Smtp-Source: AGHT+IE8WloieXoBNrz84YwZxVbzeE/8sdLkgTaGX4kiUy5piDKudNOJ6ss5nr4szNlRJ4Cd4qE+HQ==
X-Received: by 2002:ac2:499c:0:b0:51e:ee83:bb8b with SMTP id 2adb3069b0e04-5217d242e7bmr1063993e87.5.1715157211274;
        Wed, 08 May 2024 01:33:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id q11-20020a056402248b00b005726b83071esm7424373eda.4.2024.05.08.01.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 01:33:30 -0700 (PDT)
Date: Wed, 8 May 2024 10:33:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <Zjs42PGvilLlF0Cg@phenom.ffwll.local>
Mail-Followup-To: Daniel Stone <daniel@fooishbar.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Maxime Ripard <mripard@redhat.com>,
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
 <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
 <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
 <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9B32A3F3A6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:email,ffwll.ch:dkim];
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
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.51:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: XNJWRLLNKRUX3ITKFO3XPJZUC76ZU7NB
X-Message-ID-Hash: XNJWRLLNKRUX3ITKFO3XPJZUC76ZU7NB
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNJWRLLNKRUX3ITKFO3XPJZUC76ZU7NB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 08, 2024 at 06:46:53AM +0100, Daniel Stone wrote:
> Hi,
> 
> On Tue, 7 May 2024 at 12:15, Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Mon, May 06, 2024 at 04:01:42PM +0200, Hans de Goede wrote:
> > > On 5/6/24 3:38 PM, Daniel Vetter wrote:
> > > I agree that bad applications are an issue, but not for the flathub / snaps
> > > case. Flatpacks / snaps run sandboxed and don't have access to a full /dev
> > > so those should not be able to open /dev/dma_heap/* independent of
> > > the ACLs on /dev/dma_heap/*. The plan is for cameras using the
> > > libcamera software ISP to always be accessed through pipewire and
> > > the camera portal, so in this case pipewere is taking the place of
> > > the compositor in your kms vs render node example.
> >
> > Yeah essentially if you clarify to "set the permissions such that pipewire
> > can do allocations", then I think that makes sense. And is at the same
> > level as e.g. drm kms giving compsitors (but _only_ compositors) special
> > access rights.
> 
> That would have the unfortunate side effect of making sandboxed apps
> less efficient on some platforms, since they wouldn't be able to do
> direct scanout anymore ...

I was assuming that everyone goes through pipewire, and ideally that is
the only one that can even get at these special chardev.

If pipewire is only for sandboxed apps then yeah this aint great :-/
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
