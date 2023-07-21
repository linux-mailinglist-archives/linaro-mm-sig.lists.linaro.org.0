Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F57475C6EB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jul 2023 14:33:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 827C043F31
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jul 2023 12:33:10 +0000 (UTC)
Received: from mailrelay4-1.pub.mailoutpod2-cph3.one.com (mailrelay4-1.pub.mailoutpod2-cph3.one.com [46.30.211.179])
	by lists.linaro.org (Postfix) with ESMTPS id 806463F0CC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jul 2023 12:33:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ravnborg.org header.s=rsa1 header.b=GoV3E7VT;
	dkim=pass header.d=ravnborg.org header.s=ed1 header.b=9xOKpGpt;
	spf=none (lists.linaro.org: domain of sam@ravnborg.org has no SPF policy when checking 46.30.211.179) smtp.mailfrom=sam@ravnborg.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-transfer-encoding:content-type:mime-version:references:
	 message-id:subject:cc:to:from:date:from;
	bh=EmK+s79iHYSMxKUHHFzMSHP5Gr4Y9HLSftbd9Ecs9V0=;
	b=GoV3E7VTyj3jSak4WVapZnXdBDXUXPW7O/DjDQR67JvQSlDg0E6Z+7U2EJW2wSazWNIl+zv+6Wa/J
	 Oko9BnChqt1i54NKNZoPyniQnmVclXhem4i6z8bBp6NtJIPaQD7+wnhOz/akOwwRa2ZC0ssNMMwmF5
	 lNENAy8IzMfy97Ci9nY0MdxDviT9U14WA79crnQh6+4/WN84/8V8IqtRI1v5NfAxNuRyjSyPsveGoD
	 tEtb6CyFzXVKij6+gOWLHJl7ZDtkINx+IZzIi9oHL7+60126NBJkga/kfzfjljAZB/5ubdRQDZFbeQ
	 /Y4JIVvzIWYXtPd+u2V+2lGM6a3C9eQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-transfer-encoding:content-type:mime-version:references:
	 message-id:subject:cc:to:from:date:from;
	bh=EmK+s79iHYSMxKUHHFzMSHP5Gr4Y9HLSftbd9Ecs9V0=;
	b=9xOKpGptgdPeXrLkjWh5r4V21or4l5WCdvZcs1Z3pKTNr83EHudOHcfJcC9y10AUYCZx4y9WENCOj
	 5kj+Y/MAQ==
X-HalOne-ID: b8a6ca80-27c2-11ee-9464-592bb1efe9dc
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay4 (Halon) with ESMTPSA
	id b8a6ca80-27c2-11ee-9464-592bb1efe9dc;
	Fri, 21 Jul 2023 12:33:00 +0000 (UTC)
Date: Fri, 21 Jul 2023 14:32:58 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <20230721123258.GA337946@ravnborg.org>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-7-keith.zhao@starfivetech.com>
 <07cc89a5-5200-72e6-f078-694c5820a99a@suse.de>
 <a8c51143-01cb-a95f-bfbd-16827325934e@starfivetech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8c51143-01cb-a95f-bfbd-16827325934e@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 806463F0CC
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[46.30.211.179:from];
	R_DKIM_ALLOW(-0.20)[ravnborg.org:s=rsa1,ravnborg.org:s=ed1];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:51468, ipnet:46.30.208.0/21, country:DK];
	BLOCKLISTDE_FAIL(0.00)[2.105.2.98:server fail];
	DKIM_TRACE(0.00)[ravnborg.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DMARC_NA(0.00)[ravnborg.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: 7IN5AUYL2XM3UATOHNG5LENVRQ27Q4U3
X-Message-ID-Hash: 7IN5AUYL2XM3UATOHNG5LENVRQ27Q4U3
X-MailFrom: sam@ravnborg.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] drm/verisilicon: Add drm crtc funcs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7IN5AUYL2XM3UATOHNG5LENVRQ27Q4U3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Keith,
On Fri, Jul 21, 2023 at 07:57:24PM +0800, Keith Zhao wrote:
> >> +
> >> +struct vs_crtc_funcs {
> >> +=A0=A0=A0 void (*enable)(struct device *dev, struct drm_crtc *crtc);
> >> +=A0=A0=A0 void (*disable)(struct device *dev, struct drm_crtc *crtc);
> >> +=A0=A0=A0 bool (*mode_fixup)(struct device *dev,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const struct drm_display_m=
ode *mode,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct drm_display_mode *a=
djusted_mode);
> >> +=A0=A0=A0 void (*set_gamma)(struct device *dev, struct drm_crtc *crtc,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct drm_color_lut *lut, un=
signed int size);
> >> +=A0=A0=A0 void (*enable_gamma)(struct device *dev, struct drm_crtc *c=
rtc,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bool enable);
> >> +=A0=A0=A0 void (*enable_vblank)(struct device *dev, bool enable);
> >> +=A0=A0=A0 void (*commit)(struct device *dev);
> >> +};
> >=20
> > Why is this here? You are reproducing our interface with an internal in=
terface. I know where this leads to: you have multiple chipset revisions an=
d each has its own implemenation of these internal interfaces.
> >=20
> > That will absolutely come back to haunt you in the long rung: the more =
chip revisions you support, the more obscure these internal interfaces and =
implentations become. And you won't be able to change these callbacks, as t=
hat affects all revisions. We've seen this with a few drivers. It will beco=
me unmaintainable.
> >=20
> > A better approach is to treat DRM's atomic callback funcs and atomic he=
lper funcs as your interface for each chip revision. So for each model, you=
 implement a separate modesetting pipeline. When you add a new chip revisio=
n, you copy the previous chip's code into a new file and adopt it. If you f=
ind comon code among individual revisions, you can put it into a shared hel=
per.=A0 With this design, each chip revision stands on its own.
> >=20
> > I suggest to study the mgag200 driver. It detects the chip revision ver=
y early and builds a chip-specific modesetting pipline. Although each chip =
is handled separately, a lot of shared code is in helpers. So the size of t=
he driver remains small.
> >=20
> hi Thomas:
> I'm trying to understand what you're thinking

I am not Thomas, but let me try to put a few words on this.

> 1. Different chip ids should have their own independent drm_dev, and shou=
ld not be supported based on a same drm_dev.
Yes, this part is correct understood.

> 2. diff chip id , for example dc8200 , dc9000,
>=20
> struct vs_crtc_funcs {
> 	void (*enable)(struct device *dev, struct drm_crtc *crtc);
> 	void (*disable)(struct device *dev, struct drm_crtc *crtc);
> 	bool (*mode_fixup)(struct device *dev,
> 			   const struct drm_display_mode *mode,
> 			   struct drm_display_mode *adjusted_mode);
> 	void (*set_gamma)(struct device *dev, struct drm_crtc *crtc,
> 			  struct drm_color_lut *lut, unsigned int size);
> 	void (*enable_gamma)(struct device *dev, struct drm_crtc *crtc,
> 			     bool enable);
> 	void (*enable_vblank)(struct device *dev, bool enable);
> 	void (*commit)(struct device *dev);
> };
No - the idea is that you populate crtc_funcs direct.
Drop struct vs_crtc_funcs - just fill out your own crtc_funcs structure.

If it turns out that most of the crtc operations are the same then share
them. Avoid the extra layer of indirection that you have with struct vs_crt=
c_funcs
as this is not needed when you use the pattern described by Thomas.


> static const struct vs_crtc_funcs vs_dc8200_crtc_funcs =3D {...}
> static const struct vs_crtc_funcs vs_dc9200_crtc_funcs =3D {...}
>=20
> struct vs_drm_private {
> 	struct drm_device base;
> 	struct device *dma_dev;
> 	struct iommu_domain *domain;
> 	unsigned int pitch_alignment;

This parts looks fine.

>=20
> 	const struct vs_crtc_funcs *funcs;
No, here you need a pointer to struct crtc_funcs or a struct that embeds
crtc_funcs.
> };

If you, after reading this, thinks you need struct vs_crtc_funcs, then
try to take an extra look at mgag200. It is not needed.

I hope this helps.

	Sam
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
