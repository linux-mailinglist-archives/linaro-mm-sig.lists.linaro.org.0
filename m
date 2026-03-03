Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNi7Blof4Wl0pQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:41:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CFE41312B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:41:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E98C445CC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:41:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 011193F69B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 13:13:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=f062MBur;
	dkim=pass header.d=redhat.com header.s=google header.b=bnXHuqVt;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772543587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5qYfoI6IhVhwhSZGcHAz8lUbAzhXZJ/rjYc5L9rs8fk=;
	b=f062MBurugz94+nJwzN8eKrz3ldAidzMeD7Tf9N7NeBw+F9wKhT/YU1DVDZ+LFyDE81wm6
	b9dSS7xcqDsLdMfCRodFP2L386hdZok7f+W3+HVIyCQubhcIXvQhUe6FFFFSdhhCAo5m+q
	1JL1+8PsfKkyZ3tNK8a+oFJ5/Mc6mXY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-358--bk2SAPFMf6lqbmNF7-C1w-1; Tue, 03 Mar 2026 08:13:06 -0500
X-MC-Unique: -bk2SAPFMf6lqbmNF7-C1w-1
X-Mimecast-MFC-AGG-ID: -bk2SAPFMf6lqbmNF7-C1w_1772543585
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4837246211bso67853565e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772543585; x=1773148385; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5qYfoI6IhVhwhSZGcHAz8lUbAzhXZJ/rjYc5L9rs8fk=;
        b=bnXHuqVtMC7zvE2cR2GNsYBN8dTshZot/gwnT5vyOuk9L24gJRrndMvZB4GaOTpZ8H
         pEnCJ5M/rXZFHE2X222YwchsfVvAqyWjrcel/s/Qb7merQDosH+QK7mlr6tDfSGD3K5V
         COtdbctehgfloVw3Y30okTTHeaGrqHUJt7UBxvUczVllGWl9hei/RLtWFionI1PnXNN3
         rqleW/iHRjkon/u5VECSlVBWaOPKMzAXCMVyrZ+vYJ1WkQa4gtQGoIsBY59rd+WrH+jp
         sSgh4DILsa0ako2vTOiUZI+u7qZVrHrlI00j2USI2wYW9RtNKF6WkZtkQeiuMy7K9iU8
         mPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543585; x=1773148385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5qYfoI6IhVhwhSZGcHAz8lUbAzhXZJ/rjYc5L9rs8fk=;
        b=TQs1yweALtJGCBT8BYV/Y7RtgfFTYCwBHDFArCDddv9sI6rxPGp2dw9tDyPHEEqp3k
         5hC6UktB2vsSmS/IMEvc845WQxk7fV41MS5QpIQdIynRerHUQeoWC7GxhZYKrPKCiQGb
         wOdNYFGX9zbkZgXOjiCkZiu+TmWSO2jWjs29TQ2kJ/mIIQiWvSqrJ/ava9qO2dSwkQ/C
         KdXMEFDdrPR+tSxzSbjv9an26ag3rG/bbFXqUvRLAi1xMJfgMmWW17/cfD4Dh7WWkt8V
         fw2nASCbDpTAl/SDp9hYMRAGWJPA0oQrdiU6VWpLxSlq/iLJ77BYorXEbPULu17GG9Q2
         ASNA==
X-Forwarded-Encrypted: i=1; AJvYcCWTYycdC/G/mk2AIcu3PcrMLowhcmBw9u8tHhVKe4+oh6/0enlzd9F0umz69E4diFf/vk39YuM1ob5kskUD@lists.linaro.org
X-Gm-Message-State: AOJu0YwKUc7/yvsMPrEPPWLJ0QMzU7BW3iHBw1V1iBNKAY/G6uvBpKKC
	nYYrwjGCrG2xDef75f/4KYLW5sR3SuSx7BmHFJ5yEBCOCdHDkhREW8m3XMjfieg8muMEuzw6J8E
	UJTteUl9iztjRpaR9HQQEwFIZ59Ppgprc1UU0ke2KCH6QQnzoYNvG+gvTfedX6Qt9I2il
X-Gm-Gg: ATEYQzynEDUFLrPSQ4UA/eriKWoKJZHSahEooR5c7uu7TtE5txKxbxOXnzKFzEZVehy
	Nmfh2Vnwy7VmQIQLqMWHRc0Htn+ZF+cjqE2NZ6UdemcRfojWUWsEgNdnlQ5NwD85COVzAcdGyQN
	hKSILWQT/nXUodKHxh47/uuH88dyYnnCY3BmzmUgg+SwkJJn4eLpCI/CgJL0tiIkooUAuJ5YS1e
	ASH31bAGDAbRN3rGy9GKLduFwR5pnnvPoz8JSXEOkQmKEO1gtbxjVDj2wj8DPsrB1L2g6WNui0+
	6iy2BnhGgWM1MPX4jtLsxzTLqPI1mxbnwzHpv4s6Zw2HJmwbt6wgWdaOdMagHy4DLyCOdiIasA=
	=
X-Received: by 2002:a05:600c:1393:b0:483:498f:7963 with SMTP id 5b1f17b1804b1-483c9c1f8fcmr272330295e9.26.1772543584834;
        Tue, 03 Mar 2026 05:13:04 -0800 (PST)
X-Received: by 2002:a05:600c:1393:b0:483:498f:7963 with SMTP id 5b1f17b1804b1-483c9c1f8fcmr272329585e9.26.1772543584305;
        Tue, 03 Mar 2026 05:13:04 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48512692c14sm17392055e9.7.2026.03.03.05.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:13:03 -0800 (PST)
Date: Tue, 3 Mar 2026 14:13:02 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Albert Esteve <aesteve@redhat.com>
Message-ID: <20260303-weightless-crafty-hyrax-bdf1ca@houat>
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-3-65a4653b3378@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260303-b4-dmabuf-heap-coherent-rmem-v2-3-65a4653b3378@redhat.com>
X-Spamd-Bar: --------
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7XWGXPZVEMF4S3SLLM7JXVVRWSSBWS7T
X-Message-ID-Hash: 7XWGXPZVEMF4S3SLLM7JXVVRWSSBWS7T
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:20 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] of_reserved_mem: add a helper for rmem device_init op
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7XWGXPZVEMF4S3SLLM7JXVVRWSSBWS7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1346694405166835359=="
X-Spamd-Result: default: False [1.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1060];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[redhat.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D8CFE41312B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============1346694405166835359==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="6eyb3mm7ilqztbmi"
Content-Disposition: inline


--6eyb3mm7ilqztbmi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/6] of_reserved_mem: add a helper for rmem
 device_init op
MIME-Version: 1.0

On Tue, Mar 03, 2026 at 01:33:46PM +0100, Albert Esteve wrote:
> Add a helper function wrapping internal reserved memory
> device_init call and expose it externally.
>=20
> Use the new helper function within of_reserved_mem_device_init_by_idx().
>=20
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---
>  drivers/of/of_reserved_mem.c    | 27 +++++++++++++++++++++++----
>  include/linux/of_reserved_mem.h |  8 ++++++++
>  2 files changed, 31 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 1fd28f8056108..3a350bef8f11e 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -605,6 +605,28 @@ struct rmem_assigned_device {
>  static LIST_HEAD(of_rmem_assigned_device_list);
>  static DEFINE_MUTEX(of_rmem_assigned_device_mutex);
> =20
> +/**
> + * of_reserved_mem_device_init_with_mem() - assign reserved memory regio=
n to
> + *					    given device
> + * @dev:	Pointer to the device to configure
> + * @rmem:	Reserved memory region to assign
> + *
> + * This function assigns respective DMA-mapping operations based on the
> + * reserved memory region already provided in @rmem to the @dev device,
> + * without walking DT nodes.
> + *
> + * Returns error code or zero on success.
> + */
> +int of_reserved_mem_device_init_with_mem(struct device *dev,
> +					 struct reserved_mem *rmem)
> +{
> +	if (!dev || !rmem || !rmem->ops || !rmem->ops->device_init)
> +		return -EINVAL;
> +
> +	return rmem->ops->device_init(rmem, dev);
> +}
> +EXPORT_SYMBOL_GPL(of_reserved_mem_device_init_with_mem);
> +
>  /**
>   * of_reserved_mem_device_init_by_idx() - assign reserved memory region =
to
>   *					  given device
> @@ -643,14 +665,11 @@ int of_reserved_mem_device_init_by_idx(struct devic=
e *dev,
>  	rmem =3D of_reserved_mem_lookup(target);
>  	of_node_put(target);
> =20
> -	if (!rmem || !rmem->ops || !rmem->ops->device_init)
> -		return -EINVAL;
> -
>  	rd =3D kmalloc_obj(struct rmem_assigned_device);
>  	if (!rd)
>  		return -ENOMEM;
> =20
> -	ret =3D rmem->ops->device_init(rmem, dev);
> +	ret =3D of_reserved_mem_device_init_with_mem(dev, rmem);
>  	if (ret =3D=3D 0) {
>  		rd->dev =3D dev;
>  		rd->rmem =3D rmem;

I think you need to take the allocation of rd, and everything below.
Otherwise, your device, despite being attechd, wouldn't be listed
anywhere.

Maxime

--6eyb3mm7ilqztbmi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaabeWQAKCRAnX84Zoj2+
dobdAYD53cfYylVyAMmjYQNu5L2HhH4nvwgXPsXDn+F4I5VP5R8b4pw9vf6buYC3
VoNwMQ4BfRUwUB8fZ2DXMX2IzVK3CXj6DaDP6OvnbvuzEI1Mw7ev9Mpzd14engew
qmADP+lGrA==
=WwGV
-----END PGP SIGNATURE-----

--6eyb3mm7ilqztbmi--


--===============1346694405166835359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1346694405166835359==--

