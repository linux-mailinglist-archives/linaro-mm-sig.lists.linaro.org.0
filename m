Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLTCDSoN4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA5411ADE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDCC943CF2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:24:08 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id C22EA3F774
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 13:28:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=dxMHNvqi;
	dkim=pass header.d=redhat.com header.s=google header.b=YjouLj6U;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769174937;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
	b=dxMHNvqiI72KuBLDeNXwwGiAd2iyOdXU1SlGwjtqm8c/yBcSyAQamIXl0OW51MBx2XWmg7
	/Xgszrpcjl/jCwEAuqXENJUuqnaJN15Tj+XMnuQUgPegttaisgRYMU7ayVI1v3ofRWa3x2
	AWpKes/aiot+TRr9ojgjv+5Wmy9oG9k=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-208-hLlWL90GP0Olj6kcaClxyA-1; Fri, 23 Jan 2026 08:28:53 -0500
X-MC-Unique: hLlWL90GP0Olj6kcaClxyA-1
X-Mimecast-MFC-AGG-ID: hLlWL90GP0Olj6kcaClxyA_1769174933
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-430fe16b481so1530851f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 05:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769174932; x=1769779732; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
        b=YjouLj6UCgSpgUgPI6ubg4vJMcCfCmU67c5eGZose74rf92XIRQsjKOY1W7edTFKo9
         NPg1RVG0wHQA4SsU8D9BKXNIH1U4COJCTsIFBZRM+ZzO38F+cLRomeU9eHmyStxBMMVs
         hs7y4+pou+1Usx5Dpo4afTNvYuxNst+Dk6lZ24AdeSkaR/63x/nL3Ax59rgXMAZXKlJ+
         qmEdkk6Sgit6n9Ejt+8NKFS8fg77eYEdOaoYr/3e1yMxrZ+grWHbzIsgAPf+HTJuxmF0
         Tl7nPEhd+fPsaVXJzxXa1da0M2dTpw1hUQBZDFMeRZFCal9r4uTIOdQivkE9n3pS6YXq
         L9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174932; x=1769779732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
        b=OHHVUYicMIwgEGw7rGJtNai56n3C5zkPJ6jcsuRAA+RuNntLze/JdgN4jfi9qImRkT
         9Pdc6EudUDB+lyo9j8cu2AifzOR6aRo1HbizFzZtO39UyvWO7zGOxNmRC4bn5K0jBstn
         nKqN9m0EwZDikLdItvt2ZLTrUtTmELoRjcw68kVA8kwayYYfPRzhaacSjLnZitjhwlUb
         YynwGuZxfFdCjDba1LcN+1n+1WH9DlO8dTqqbGqhNDjegBegK5fePQDCXMR+BrmYAP40
         FQQv92UOIiXFUfbiL8eO3KjiWu0UyjLbMNkzqfJTrBfNBhwUqe+qJ8+bDL8kp6QpUH5f
         gTgw==
X-Forwarded-Encrypted: i=1; AJvYcCVxS45xoiawgd6kVBjdlnKYxf9sx1eDis5n4QOOathhlZgTL4sKt5WDd7I9dkeGKXhHyQwKMZ0E+BjEDKq4@lists.linaro.org
X-Gm-Message-State: AOJu0YxV9F/aba6bxWmd6x/tudDmfb01mb3OsddTQfby+357oBeCUECm
	DqUm+dQRYqvaDRnijqk4bM5inAz31oiqeOgO0123cz1/HyCtq8zcANh7M7x06gPLNEy5ZLjINl8
	taY5I9mT65ITk5zIbeY/kJt6xnCIZXf0zqfCTnp3nlmGXRBsmFc5ZJQ6iUXZFSAS3aY4r
X-Gm-Gg: AZuq6aKkI6EVtsjKmCXoOlfDqXXI3/9yftAEhseKs29ILATFRV1grCOQsmCAL0qtBdx
	s3/6rVLedhKG/aTgD79OsFMdesMV+zDANx8wqS5m23A4CG8kU/Fpunx/ULEI/hGB+vxO3pPcEZt
	3FDT2Qqs96OL0lTgdLMLMKZA9N6Pn5Bi0VkRiZX5RUISnJHVRuujFRguGQysrD1pQrKC6Uyye4n
	POn6ly88Z3Hi0VWErDoW8iZCTDaPy2FIbfkGx061X9H9Cqp2ozdiyOd+qovntl94e6Pq2apfKYX
	yRtgKeZs+BFDEYRGr0SQ9KnQbSklbn1lEi3tzqhAuzItlw6Cq7gVkyzcBlJ79g==
X-Received: by 2002:a05:600c:35cf:b0:47e:e952:86ca with SMTP id 5b1f17b1804b1-4804c94550emr57738005e9.2.1769174932356;
        Fri, 23 Jan 2026 05:28:52 -0800 (PST)
X-Received: by 2002:a05:600c:35cf:b0:47e:e952:86ca with SMTP id 5b1f17b1804b1-4804c94550emr57737405e9.2.1769174931899;
        Fri, 23 Jan 2026 05:28:51 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804dbe1fb8sm20935105e9.20.2026.01.23.05.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:28:51 -0800 (PST)
Date: Fri, 23 Jan 2026 14:28:50 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260123-slim-seal-of-luxury-bdb58b@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-8-thierry.reding@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260122161009.3865888-8-thierry.reding@kernel.org>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BWDVWD4TR23TBSXVQJ7C6KZENMZ5C73Y
X-Message-ID-Hash: BWDVWD4TR23TBSXVQJ7C6KZENMZ5C73Y
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:28 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on Tegra234
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BWDVWD4TR23TBSXVQJ7C6KZENMZ5C73Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2805538840051990298=="
X-Spamd-Result: default: False [6.69 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1994];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
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
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.585];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: C0AA5411ADE
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes


--===============2805538840051990298==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="cj5dkpv3cmq4mgtz"
Content-Disposition: inline


--cj5dkpv3cmq4mgtz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on
 Tegra234
MIME-Version: 1.0

On Thu, Jan 22, 2026 at 05:10:06PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> This node contains two sets of properties, one for the case where the
> VPR is resizable (in which case the VPR region will be dynamically
> allocated at boot time) and another case where the VPR is fixed in size
> and initialized by early firmware.
>=20
> The firmware running on the device is responsible for updating the node
> with the real physical address for the fixed VPR case and remove the
> properties needed only for resizable VPR. Similarly, if the VPR is
> resizable, the firmware should remove the "reg" property since it is no
> longer needed.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra234.dtsi
> index 850c473235e3..62a5dfde9e38 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> @@ -29,6 +29,40 @@ aliases {
>  		i2c8 =3D &dp_aux_ch3_i2c;
>  	};
> =20
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		vpr: video-protection-region@0 {
> +			compatible =3D "nvidia,tegra-video-protection-region";

The heap name doesn't follow the documented convention, see
https://docs.kernel.org/userspace-api/dma-buf-heaps.html#naming-convention

--cj5dkpv3cmq4mgtz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXN3kgAKCRAnX84Zoj2+
dgbuAYCUCaHUWqJPUhpJEcWkq2uLIaAHUBUCBbdSNPF5dpiFWDp+QSk3hILjtrCJ
0RNZRFsBfRAntBAG5/xlnModxB1enPz3Z9TuAC/80PaW7OVoKyjeBvgxqbNMjc+5
iM/+K++lbw==
=V4o/
-----END PGP SIGNATURE-----

--cj5dkpv3cmq4mgtz--


--===============2805538840051990298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2805538840051990298==--

