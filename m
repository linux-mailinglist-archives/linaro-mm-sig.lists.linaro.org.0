Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B02JzIN4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 40644411AE6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:24:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C2D443E8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:24:17 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id ADD3B3F774
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 13:30:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=imenJaq9;
	dkim=pass header.d=redhat.com header.s=google header.b=rXu48iha;
	spf=pass (lists.linaro.org: domain of mripard@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mripard@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769175021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
	b=imenJaq9hqA8JTO5L0oykHGIrZHtBodsiXHDT+sWDk/tTVbrXCka59ISDepMWa/3mr+qMv
	Fm9mQxCDfS8vtGHeqwaoxXC6D4sWxKiOLo00SAXwEHsxokJcYO97aZ6xVlpYxmfMgiQGeN
	YfzBGCo7onaSPjt3lqGyXXyLHkLXyqc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-fKBUE4TqNL-JgMz84oG5zQ-1; Fri, 23 Jan 2026 08:30:18 -0500
X-MC-Unique: fKBUE4TqNL-JgMz84oG5zQ-1
X-Mimecast-MFC-AGG-ID: fKBUE4TqNL-JgMz84oG5zQ_1769175017
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-47edf8ba319so18674865e9.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 05:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769175017; x=1769779817; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
        b=rXu48iha2F+OBSrh9cXRi2eZBqCpcGNBi93OUbsrLSKIWeUUpenwsqNBA8tEwumsQK
         aO6X02Snket8Qq1xBFnyrwudYjpeVSteBJVMUMrtVESfyG9GpL3vTiPYl/zaUWXrjGxT
         S6Tpg991ZlwfyxcZ1k9QdRsztSK71R4A78TthjUz13c6hQ2nYCGV5zsG44TbAwTO7eUC
         krPZ4pdiwCf8zIK8y2Xn1EWpqTGGXWD+fa27pPLpXMH2oKirAUZXOf+VDAgBCoxkOn3J
         VtGsyNZ8Poa6iSySYUcRMfjW+ITEaf4IitvrAKRE9V/lfO4ADDtYeKlK2RUKKo3zrRP1
         z3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175017; x=1769779817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q7Dwu+CNXtg5bTxCbEyb6A4+Vw/Acc988cNs3Meb1J8=;
        b=sr8LQ/kFj/rAdBb5bYXQcGOH1iYyHpLLjTDLrLV5tqmA2FUb4WoKscwQeJ0oBBIC+J
         7gzhqMramBDNwkOXQDk9GSGnHkoVbca28WZpWDZXUKRFzdt9VcYGAo5BjT4KQAMuNw6W
         /eG5kD2Jq4n1xf9eJWsBOXBDfLQT0HDs7/wJwJUzrhMmmrGKNgW/m6ZAiZ3iCfjzrPj+
         2jsOLJQ/WQaoo8KvJr26fS3XC2qcezHVS+oqJvWI7+9olpnML0DVKYaM8gZq2f4qJekx
         fwJRq5HBjvjDm1dMwszWubY6QAwDuCiPjaR3wrgjdylpmBXs16vo5mDuIcP6pNwYk7zM
         9lxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIbGvaH5FpdwnXf+pG/HT6TxQ4VCiEL4VYcaXEa9Oi3id+0DPL0f2ICQHXc45R9GP2EnNpBD2XgAe80CAN@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6LXGBB95Yxs/C9Hi5dyiPpgB7Cx+UycR/+i0QOO5FaORvkQcV
	+8N0idOL5HWVkB8hk5kzsLKtXxmzz1gj2O2uH4yVJIcUyE4CPY6FPN5d6Mmh2djFeiI3Ngrv8yt
	BsGY8yLOjabgQT1J6fEEshinULQgPBV21lJzB1i9B45pJzkl2lUsqyKFSvQsmvMk3ICZL
X-Gm-Gg: AZuq6aIzkQ6qZYfhCGzIGpgoV7Afb/x+ErxCTzlJhsqz5w4jzxe1CUv//t+kAqXqXYq
	0M7cow6fPl+yc8xGbVRQgjk3faA/rThR+oxJejBuAA7cm+slv9otcbf8JSWGumxvply1Qx67UGi
	muaax6y+Cta5FMsWL8Mn+Puun7O8dGBzU9PwWQuGbDNAPn0Q1Tw49YZTZx1hDEmAoOBRqOgPw6y
	f23FmtGrvkDMBqYpX8kdn8Q0tSUCXHql2JZzhxaiTvrEFCn6RmU2Gi6nZHZfAvAsahnNBE6Iy5q
	ryYRKp1sK/SUCbNFaDmnePnovgJ8HgIQMdGz79I2TxsrYvax0/exjV8LjZfl1A==
X-Received: by 2002:a05:600c:310b:b0:47d:73a4:45a7 with SMTP id 5b1f17b1804b1-4804c9b4d0dmr52292875e9.24.1769175016396;
        Fri, 23 Jan 2026 05:30:16 -0800 (PST)
X-Received: by 2002:a05:600c:310b:b0:47d:73a4:45a7 with SMTP id 5b1f17b1804b1-4804c9b4d0dmr52291525e9.24.1769175015283;
        Fri, 23 Jan 2026 05:30:15 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db63817sm22696555e9.3.2026.01.23.05.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:30:14 -0800 (PST)
Date: Fri, 23 Jan 2026 14:30:14 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Message-ID: <20260123-meteoric-butterfly-of-imagination-fd691f@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-7-thierry.reding@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260122161009.3865888-7-thierry.reding@kernel.org>
X-Spamd-Bar: -----
X-MailFrom: mripard@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 23ALFJMRV2CAJKK4KYF7CF3EHFWKXA7V
X-Message-ID-Hash: 23ALFJMRV2CAJKK4KYF7CF3EHFWKXA7V
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:29 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/23ALFJMRV2CAJKK4KYF7CF3EHFWKXA7V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1795042798321840071=="
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1994];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.731];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 40644411AE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============1795042798321840071==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="xayh7cobbiwzraak"
Content-Disposition: inline


--xayh7cobbiwzraak
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 06/10] dma-buf: heaps: Add support for Tegra VPR
MIME-Version: 1.0

Hi,

On Thu, Jan 22, 2026 at 05:10:05PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> NVIDIA Tegra SoCs commonly define a Video-Protection-Region, which is a
> region of memory dedicated to content-protected video decode and
> playback. This memory cannot be accessed by the CPU and only certain
> hardware devices have access to it.
>=20
> Expose the VPR as a DMA heap so that applications and drivers can
> allocate buffers from this region for use-cases that require this kind
> of protected memory.
>=20
> VPR has a few very critical peculiarities. First, it must be a single
> contiguous region of memory (there is a single pair of registers that
> set the base address and size of the region), which is configured by
> calling back into the secure monitor. The memory region also needs to
> quite large for some use-cases because it needs to fit multiple video
> frames (8K video should be supported), so VPR sizes of ~2 GiB are
> expected. However, some devices cannot afford to reserve this amount
> of memory for a particular use-case, and therefore the VPR must be
> resizable.
>=20
> Unfortunately, resizing the VPR is slightly tricky because the GPU found
> on Tegra SoCs must be in reset during the VPR resize operation. This is
> currently implemented by freezing all userspace processes and calling
> invoking the GPU's freeze() implementation, resizing and the thawing the
> GPU and userspace processes. This is quite heavy-handed, so eventually
> it might be better to implement thawing/freezing in the GPU driver in
> such a way that they block accesses to the GPU so that the VPR resize
> operation can happen without suspending all userspace.
>=20
> In order to balance the memory usage versus the amount of resizing that
> needs to happen, the VPR is divided into multiple chunks. Each chunk is
> implemented as a CMA area that is completely allocated on first use to
> guarantee the contiguity of the VPR. Once all buffers from a chunk have
> been freed, the CMA area is deallocated and the memory returned to the
> system.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Aside from the discussion on CMA, it doesn't look like the heap defines
anywhere the attributes of the allocated buffers this heap provides.

Maxime

--xayh7cobbiwzraak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXN35QAKCRAnX84Zoj2+
di8FAYCOkztgtjE43ySzEaa0yAsqQduekc23hd1d+jt1Rs7EtiAvzP+ciybiSQwk
DUzYoicBgP4Oh3gf3t211CT8YUccPrYQrrNg2xkUvpgMi28C/P9/n1V75W2MOChK
DyngiCfqgA==
=4Im3
-----END PGP SIGNATURE-----

--xayh7cobbiwzraak--


--===============1795042798321840071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1795042798321840071==--

