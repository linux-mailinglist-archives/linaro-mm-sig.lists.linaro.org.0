Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CA98C0166
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 17:49:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 735D440D05
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 15:49:25 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id CB4B73F3A6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 15:49:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=eDGzy+ds;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.44) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a59a86fb052so150489366b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 08:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715183354; x=1715788154; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CoDqdwsBKbW6uamNTf2oglOPRrPuT52r8TIKcUq8IZI=;
        b=eDGzy+ds8VjAHFLnhszadPe22QoU9pTbEF5fhjr1gy2+7AjOna8zMHvrT7w56fyiJv
         gd99dWQ4kMbfYCTzDmS0nwsPSMyFZpX+7Hj6Funyt4sKUqOtWaOBZA99uRMp0fFCXYeQ
         zoO+ZKs72Zc9suN7QrvbU4E1z8YCbFlQ76tAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715183354; x=1715788154;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CoDqdwsBKbW6uamNTf2oglOPRrPuT52r8TIKcUq8IZI=;
        b=AMaBIqE21XIihrt/79eQF1AUKCu/HC7KyoJeuS/MugOIosHGjaRMQPo6+787zxzXMU
         nZIMO381pHQaBTWvg4wPpGOB0O8ubgVl8pI3BLuACqugCr5M0OKS9K4K1cOMDUJxlj6o
         6vfjfv48aLesIdbyEKDDDW1j2hECkO0GW47wG4grZ1sAHTPTBmOLDLfsbEzZ/WZvKUt4
         wJZFxpKa/ujp/BmOPBeEaTpqxcZIXsHBNW1SxBW9VrrJkkL9vSVO/e0h2nCr5PJ+xkPF
         u5CHmTMdNgbT1sHNoY/A/e91FjUwequrN/S5hAJgc+PVHeRC1bIGUHdLhzb4G7/QbWew
         ngWg==
X-Forwarded-Encrypted: i=1; AJvYcCXehSW0kB9HLyjywmlZGzXYAwqk69Jqo4DQAuaOt2ttUe8wCjJVUlKXmuQiWelabdDoSD3MZMvKWyyrLvI7huU0QcCRdNnH4PLz/ha2E24=
X-Gm-Message-State: AOJu0Ywb73+4MynT1yfFuiLtu811EGHha6/hjvt50TN+aMFka7D9kzJQ
	tqSJGVHsn4MWa09FjA2BWMFH/jiMbQdcpxJruhEHi8KY2T2DiK4LX0tqqN31Fzo=
X-Google-Smtp-Source: AGHT+IHNn3Lgz5HYD12HsLRBBsnhqDUZ5S5EpU/nc5htxmMB22rLQkSpt/QiZ47OvSMSsvksPpaYBw==
X-Received: by 2002:a17:906:df14:b0:a59:bce9:8454 with SMTP id a640c23a62f3a-a59fb94f6d3mr192308366b.1.1715183353735;
        Wed, 08 May 2024 08:49:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id uz14-20020a170907118e00b00a599adfd49dsm6452017ejb.64.2024.05.08.08.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 08:49:13 -0700 (PDT)
Date: Wed, 8 May 2024 17:49:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
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
 <Zjs42PGvilLlF0Cg@phenom.ffwll.local>
 <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CB4B73F3A6
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:email,ffwll.ch:dkim,mail-ej1-f44.google.com:rdns,mail-ej1-f44.google.com:helo];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RNUYW2TJPHWHOLVGIVR222RRCHVQGDEG
X-Message-ID-Hash: RNUYW2TJPHWHOLVGIVR222RRCHVQGDEG
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RNUYW2TJPHWHOLVGIVR222RRCHVQGDEG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, May 08, 2024 at 09:38:33AM +0100, Daniel Stone wrote:
> On Wed, 8 May 2024 at 09:33, Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Wed, May 08, 2024 at 06:46:53AM +0100, Daniel Stone wrote:
> > > That would have the unfortunate side effect of making sandboxed apps
> > > less efficient on some platforms, since they wouldn't be able to do
> > > direct scanout anymore ...
> >
> > I was assuming that everyone goes through pipewire, and ideally that is
> > the only one that can even get at these special chardev.
> >
> > If pipewire is only for sandboxed apps then yeah this aint great :-/
> 
> No, PipeWire is fine, I mean graphical apps.
> 
> Right now, if your platform requires CMA for display, then the app
> needs access to the GPU render node and the display node too, in order
> to allocate buffers which the compositor can scan out directly. If it
> only has access to the render nodes and not the display node, it won't
> be able to allocate correctly, so its content will need a composition
> pass, i.e. performance penalty for sandboxing. But if it can allocate
> correctly, then hey, it can exhaust CMA just like heaps can.
> 
> Personally I think we'd be better off just allowing access and
> figuring out cgroups later. It's not like the OOM story is great
> generally, and hey, you can get there with just render nodes ...

Imo the right fix is to ask the compositor to allocate the buffers in this
case, and then maybe have some kind of revoke/purge behaviour on these
buffers. Compositor has an actual idea of who's a candidate for direct
scanout after all, not the app. Or well at least force migrate the memory
from cma to shmem.

If you only whack cgroups on this issue you're still stuck in the world
where either all apps together can ddos the display or no one can
realistically direct scanout.

So yeah on the display side the problem isn't solved either, but we knew
that already.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
