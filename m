Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XtaiMQ6lKWobbQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 19:55:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F09E66C13E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 19:55:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ndufresne-ca.20251104.gappssmtp.com header.s=20251104 header.b=BpIXeHJX;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ndufresne.ca (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 514F4409EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 17:55:25 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by lists.linaro.org (Postfix) with ESMTPS id 4024E3F74C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 17:55:13 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-915d64fead9so16250185a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 10:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1781114113; x=1781718913; darn=lists.linaro.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TFzr6Ap8q6XOCl46PeL7Sqp+9/TMWSjPVAD+5M0vgVw=;
        b=BpIXeHJXps+qlYgvDUTmHJFAF3HAcN+2QSQYfvt97i8OHStnOTPr7viBqbaldBq0V+
         oeAq9kbJJUlRdaWeBSxePnIxY+KXoHxBfKS8t7NzvFOEwP9+mfIq3DBuLEdjNM6555Ds
         DD6/Z0T/dnYFkd4GhbDJrENjt1+LEtbO6EgBz0m1+qjrBHAuNL9kt7WXSI+ldwNSYuYp
         z6dwYq788ETQthFpBtHLU2epvsMNBW7+x00kpDszh+Y8Q7wNHRCN3f+WK7MCnt5n6Hjb
         w4raM2MYYgcPVZe2Gh6aMCECJAEVpmtCf/iTuHlm9WTj4tJzdGpTCvhQS9/Xp8zM9C+m
         64pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114113; x=1781718913;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TFzr6Ap8q6XOCl46PeL7Sqp+9/TMWSjPVAD+5M0vgVw=;
        b=bKVXlvVr8AL7vky2BdMlh+N+V5pBa2ML05Xe/HT6XRD5O2g1RCVkHh/fdVhZ8XYefH
         Om/X+Z2H6xb0dA86GgpPVdRfmayGe7j4xZTm3jCrLel28JF3A3d1isTN9lAb9Qc6cEaY
         U8jVx93nzJ0dv0E6JeYBy2sr8Z5+6o8KBlFAA7QOx2ge/sfAgmOUw6YDgVmqN1y82EAd
         hbA9eHcq/azb+b1lSeCrjTLzt8W4p9hxCtR/GUax3pdamnwdzGle0aZQx3P5Neqr6RdA
         4JrWjwrfXjTemp59prSQUAGDRScRRZdrUd65xYxuWCYYaGC7CY5ELnXnGKj60XSjoYXU
         efBg==
X-Forwarded-Encrypted: i=1; AFNElJ8LK2ppjtOs7+s/wlKNMhsbXo3DbwPufRWI+pTfnECTGEA0GK8e3oRUYYCtUXvC0EbvL99BiKZFmyrcjcMd@lists.linaro.org
X-Gm-Message-State: AOJu0YwmSlxcPGbkARZSp/L2k5F9Cry+djKYeaVikgonN2hjzYwmchb9
	knEg6JKkEjFL+ozkkQDGrc+PNQFV2T78mzJZQEIW9HGqaHiTWQrPWBNHhh0w62WXGZ4=
X-Gm-Gg: Acq92OEAWJIe48MlBHhDePobsaOjQUwJad+ZMmYgDa6VSQV1GUuoLb3dqKecDRUiVCA
	bgQzQFf/8RQN+UPI7Sf0tGNUTOfbhVXRBWVlYRYOveghLO3/6lfSFLPBIZ+Y+D65QkwtE4DzdNY
	4eMrvY2Xp8fGhwBt6VTWy7/ph4FBDR2Jk7XzQNkvCNRdmYQNhxgXmMFweFDQau8JXgL++qdtSI3
	hCb6yuQQqBfmtIZxUJJ00JUAOLZ77f1C5ZqXlPcM/xD9OVejt25/G0BKSzVMK+PsesZ1H3s472N
	Lisz2blUUWTzKvC9CHaZA8XRz/8mcZS91IXmkvYc6Dq7t/69vWUQwwMdEH6URa02d6ZyAhvrwM6
	jkr/K5A5OF4s55mgwhAQzFT4zCOf0r+mF4qlgNX8gXQSUPF1JHtJ5fqOOxKpAjXaUTvcH5xUqoK
	HHsrqSFvMyGnr0HS/l2VDK1xZnik5V3deGSVArBgH6UslVA5UVN5lhuYd71kB4raHkRU3ZjvYx+
	HvU0uY=
X-Received: by 2002:a05:620a:4625:b0:913:dcd2:f117 with SMTP id af79cd13be357-915ad2f40aamr3123760185a.24.1781114112689;
        Wed, 10 Jun 2026 10:55:12 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0? ([2606:6d00:15:e06b:3a7c:76ff:fea1:2ac0])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9158a21f871sm2515222585a.12.2026.06.10.10.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:55:11 -0700 (PDT)
Message-ID: <0e3b9cdb9d8bd692290dfabafb32d7faa5bd50f8.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: ZhaoJinming <zhaojinming@uniontech.com>, Tomeu Vizoso
	 <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 13:55:09 -0400
In-Reply-To: <20260610071045.3414828-1-zhaojinming@uniontech.com>
References: <20260610061915.1CA281F00893@smtp.kernel.org>
	 <20260610071045.3414828-1-zhaojinming@uniontech.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-Spamd-Bar: ------
Message-ID-Hash: QD27LZ3ZSJLQPOWS2HT5Z55WZT2FOQVE
X-Message-ID-Hash: QD27LZ3ZSJLQPOWS2HT5Z55WZT2FOQVE
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/2] accel/rocket: Fix error path handling in rocket_job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QD27LZ3ZSJLQPOWS2HT5Z55WZT2FOQVE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2039986582016916284=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.51 / 15.00];
	SIGNED_PGP(-2.00)[];
	R_DKIM_REJECT(1.00)[ndufresne-ca.20251104.gappssmtp.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jeff.hugo@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[nicolas@ndufresne.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[ndufresne-ca.20251104.gappssmtp.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[uniontech.com:email,ndufresne.ca:mid,ndufresne.ca:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F09E66C13E


--===============2039986582016916284==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Xq/WDBnnQBcMXRcBkujo"


--=-Xq/WDBnnQBcMXRcBkujo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 10 juin 2026 =C3=A0 15:10 +0800, ZhaoJinming a =C3=A9crit=C2=A0=
:
> In rocket_job_run(), after taking an extra fence reference for
> job->done_fence via dma_fence_get(), the error paths have three bugs:
>=20
> - The dma_fence reference held by job->done_fence is never released,
> =C2=A0 causing a reference leak.
> - pm_runtime_get_sync() increments the usage counter even on failure,
> =C2=A0 but the error path does not decrement it, leaking the runtime PM
> =C2=A0 reference and preventing the NPU from suspending.
> - A valid but unsignaled fence is returned to the DRM scheduler,
> =C2=A0 which triggers WARN("Fence ... released with pending signals!")
> =C2=A0 when the scheduler drops its reference.
>=20
> Fix by replacing pm_runtime_get_sync() with pm_runtime_resume_and_get()
> which auto-balances the usage counter on failure, releasing both fence
> references on error, and returning ERR_PTR(ret) instead of the
> unsignaled fence.
>=20
> Cc: stable@vger.kernel.org
> Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
> Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
> ---

This is a lot of versions within the same day. You should slow down a littl=
e so
a human can provide a review, and also document the differences in this sec=
tion,
after the ---, or using a cover letter.

Nicolas

> =C2=A0drivers/accel/rocket/rocket_job.c | 19 ++++++++++++++-----
> =C2=A01 file changed, 14 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/accel/rocket/rocket_job.c
> b/drivers/accel/rocket/rocket_job.c
> index ac51bff39833..e8a073e22ac2 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -310,13 +310,22 @@ static struct dma_fence *rocket_job_run(struct
> drm_sched_job *sched_job)
> =C2=A0		dma_fence_put(job->done_fence);
> =C2=A0	job->done_fence =3D dma_fence_get(fence);
> =C2=A0
> -	ret =3D pm_runtime_get_sync(core->dev);
> -	if (ret < 0)
> -		return fence;
> +	ret =3D pm_runtime_resume_and_get(core->dev);
> +	if (ret < 0) {
> +		dma_fence_put(job->done_fence);
> +		job->done_fence =3D NULL;
> +		dma_fence_put(fence);
> +		return ERR_PTR(ret);
> +	}
> =C2=A0
> =C2=A0	ret =3D iommu_attach_group(job->domain->domain, core->iommu_group)=
;
> -	if (ret < 0)
> -		return fence;
> +	if (ret < 0) {
> +		pm_runtime_put(core->dev);
> +		dma_fence_put(job->done_fence);
> +		job->done_fence =3D NULL;
> +		dma_fence_put(fence);
> +		return ERR_PTR(ret);
> +	}
> =C2=A0
> =C2=A0	scoped_guard(mutex, &core->job_lock) {
> =C2=A0		core->in_flight_job =3D job;

--=-Xq/WDBnnQBcMXRcBkujo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaimk/QAKCRDZQZRRKWBy
9GXRAQCaqFjOga0b8AcWUWyj7n1hBiojgtP5sEJWopdr9ZDLTQD6A7XpFDMgyJa4
NJEu5ngUhgE6hDlNbS+w6OnOyC7oRQI=
=G0Lr
-----END PGP SIGNATURE-----

--=-Xq/WDBnnQBcMXRcBkujo--

--===============2039986582016916284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2039986582016916284==--
