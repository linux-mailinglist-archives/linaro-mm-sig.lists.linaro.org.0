Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMIJMHcS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEDF411F3A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:46:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7653940514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:46:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id E989A3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 10:56:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=cU24d4+r;
	dkim=pass header.d=redhat.com header.s=google header.b="W6aLzzh/";
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771412217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
	b=cU24d4+rQUm2uGbHlnP1g2cSEJgrTg4WyjJfNexcjCJ3rBDQ1yGVHBo0QKRZ7EyHF51VOK
	m6rjaJjCyeJPhiVxPMqB+NN95jNMLeMcxdgEefAekypN308VxETZ8WGXPiOVxUHZ7j9Bwy
	mqUdLzBxddSdCCb4IhZsrkuHBpoCnAg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-N1CbxenOMVKt6YkvJ_nSSA-1; Wed, 18 Feb 2026 05:56:55 -0500
X-MC-Unique: N1CbxenOMVKt6YkvJ_nSSA-1
X-Mimecast-MFC-AGG-ID: N1CbxenOMVKt6YkvJ_nSSA_1771412214
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-435a2de6ec0so3564839f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 02:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771412214; x=1772017014; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
        b=W6aLzzh/X4B/WIOoIjsOY8dINyNndzSFnaytfV5TFaNI8Ld7vaWa20An1CV4a1LepA
         uQCY8xqzG0g+OyayB6oX+GlaK0zlRx9/Z4QOCy2tmwNJfSYlNS76VzYRYjyc6PA9/tN9
         t6Nm9cglbLzLk63xFmWHBHTmGY49bmfPWKRKlrdnbf24rnYkxIzNv+N8378nhWHHCBx+
         Igmue/mvBkB2Tj9vnlp+5ba9goVIgNR+nzqNP2uc6cu/TAmfeAbRiv9BZSukE/3jIPBE
         7kqO3ds+p2kS0xZZP/zScvyEcxme0XZgZ0Hx2QynhKdTWWyHwHo+rxtaM4ZvneQWqyQk
         H6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771412214; x=1772017014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
        b=rM/hl+4pdo6cFNqDbVaIMQlu80oWlCmdEqpyQUBjwh8ROVCy9Mp1Fft+JxRsnfE39X
         OFc9XNtnaUDaDXcAQK+agidMYEi1TtjYQr3m56couQnrKEmgTeWMprz/vFq7WXEPwo9u
         fBDh3E0xqbmHapqIjIcAbp8z/wj+pD8p1OEWp4iYW80Mk3ovGGEPNyA6CYW0/MIf/536
         LcJooFgpu8KZRJONaPXke79lqmWkOEAoBjg5zEhBpZzriyyxuEtEsf3BR/+jX9gRCq1V
         kbzi3X8QU75o1WG16aaHUq4q1/L8wHnCwEP9+juochdk3fMqWMDdwM6s3I14SuN5dREe
         DCKA==
X-Forwarded-Encrypted: i=1; AJvYcCXWlLCf1Ir23VbMmXjT2DlI53boXeZs16uRSfPwMdIQhYDve+/Vwp0s+45Oad63yHeYPoTZ26SrlVtv0e1i@lists.linaro.org
X-Gm-Message-State: AOJu0YxwB7TBkLpbxPy+dqKzSwXt3a0Nhc3fwQ2ZtldMRR5KyFAsuHWK
	a+qM/tmDZ/wQC787YI7f5Td4dvv1emY+8MiXB525bAlh93lfLGQ/8R3ykRKYky8zKETsMoT2Prw
	EX45Koa7IBvHr3MqUJSlM6H9wx44JbXuLmp7cdURmNK43Jh/h72pq4PPQruHLvtn+jedH
X-Gm-Gg: AZuq6aI3gDcQ//aZWJWtIjPFAIomHps5c0JRXImuQVTdunTgeZK8NP9EuNzl0O96QXQ
	r/BQzxYtDBfWkqPz/IhAocp6gNHymGDd+Jxx4hDdU1j0dHvbICFkgQ8uxFfNfb7n/kV3QknjA/7
	Vmvf0BYwV994FOpdct/D+PeqEtaEzrGw+CCFFXA2Px7V1ZECMlZu7fjAPwT3woPTtB7QYfWmJmA
	DkheuonMvUFQIlkkVcOojnyBatILdldVPbIjHXIvfykgAr8OTESRxcaqPbe6uvG/BMZhutFvxjk
	CYD9Dl/p15AVdfv48aoY7O8/WzKPVDfZogUqDFD8/JdbSh3tgrDxaWWV7YuevZSB7+J/7nTmNg=
	=
X-Received: by 2002:a05:6000:2c0c:b0:437:8ff8:fea3 with SMTP id ffacd0b85a97d-4379db66593mr24384200f8f.21.1771412214098;
        Wed, 18 Feb 2026 02:56:54 -0800 (PST)
X-Received: by 2002:a05:6000:2c0c:b0:437:8ff8:fea3 with SMTP id ffacd0b85a97d-4379db66593mr24384146f8f.21.1771412213558;
        Wed, 18 Feb 2026 02:56:53 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abc85csm40735722f8f.22.2026.02.18.02.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 02:56:53 -0800 (PST)
Date: Wed, 18 Feb 2026 11:56:52 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260218-magnificent-flying-coucal-a4f1c0@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-8-thierry.reding@kernel.org>
 <20260123-slim-seal-of-luxury-bdb58b@houat>
 <aY3oyMhkbxhgMbfi@orome>
MIME-Version: 1.0
In-Reply-To: <aY3oyMhkbxhgMbfi@orome>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7W47DHQ3T5CIMLCPEKLDUJOWE3GO7YCB
X-Message-ID-Hash: 7W47DHQ3T5CIMLCPEKLDUJOWE3GO7YCB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:27 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on Tegra234
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7W47DHQ3T5CIMLCPEKLDUJOWE3GO7YCB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3647058736107006215=="
X-Spamd-Result: default: False [6.69 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1373];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.477];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 5AEDF411F3A
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes


--===============3647058736107006215==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3lkrnqpcfmpi4l5q"
Content-Disposition: inline


--3lkrnqpcfmpi4l5q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on
 Tegra234
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:51:29PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:28:50PM +0100, Maxime Ripard wrote:
> > On Thu, Jan 22, 2026 at 05:10:06PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > This node contains two sets of properties, one for the case where the
> > > VPR is resizable (in which case the VPR region will be dynamically
> > > allocated at boot time) and another case where the VPR is fixed in si=
ze
> > > and initialized by early firmware.
> > >=20
> > > The firmware running on the device is responsible for updating the no=
de
> > > with the real physical address for the fixed VPR case and remove the
> > > properties needed only for resizable VPR. Similarly, if the VPR is
> > > resizable, the firmware should remove the "reg" property since it is =
no
> > > longer needed.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > ---
> > >  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++=
++
> > >  1 file changed, 34 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/bo=
ot/dts/nvidia/tegra234.dtsi
> > > index 850c473235e3..62a5dfde9e38 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> > > @@ -29,6 +29,40 @@ aliases {
> > >  		i2c8 =3D &dp_aux_ch3_i2c;
> > >  	};
> > > =20
> > > +	reserved-memory {
> > > +		#address-cells =3D <2>;
> > > +		#size-cells =3D <2>;
> > > +		ranges;
> > > +
> > > +		vpr: video-protection-region@0 {
> > > +			compatible =3D "nvidia,tegra-video-protection-region";
> >=20
> > The heap name doesn't follow the documented convention, see
> > https://docs.kernel.org/userspace-api/dma-buf-heaps.html#naming-convent=
ion
>=20
> I could change this to protected@0, which would make the name of the
> exported heap "protected".

protected-video would work too, but yeah, as long as it's unique, this
works.

Maxime

--3lkrnqpcfmpi4l5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZWa7wAKCRAnX84Zoj2+
dvUhAYCm3FfvWk95XHH2FpeLOwuwKc6yGIbEd2DSsZvfEyoEj29SyLApBrBuUbbF
1e/ifR4BgM0QdBWXEmJb3YcqxnY/OdqsBvatOWUWz2hoGC3/GAFLKTRWhVfS1lbP
wk++E+B39w==
=Z//1
-----END PGP SIGNATURE-----

--3lkrnqpcfmpi4l5q--


--===============3647058736107006215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3647058736107006215==--

