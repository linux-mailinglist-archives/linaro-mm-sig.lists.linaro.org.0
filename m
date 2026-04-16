Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKczJPNl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B1431F43
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:44:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42D483F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:44:18 +0000 (UTC)
Received: from mail-qv1-f97.google.com (mail-qv1-f97.google.com [209.85.219.97])
	by lists.linaro.org (Postfix) with ESMTPS id 6C82A3F772
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2026 03:37:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=broadcom.com header.s=google header.b=QGZ0Yyzm;
	dmarc=pass (policy=reject) header.from=broadcom.com;
	spf=pass (lists.linaro.org: domain of zack.rusin@broadcom.com designates 209.85.219.97 as permitted sender) smtp.mailfrom=zack.rusin@broadcom.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-qv1-f97.google.com with SMTP id 6a1803df08f44-8a05c18d3e2so1785466d6.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 20:37:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776310678; x=1776915478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kAaWT9Kw2pYh1scCxkCtPy3JidiiNKYvadPHq6hbfo=;
        b=Jz/f/960JbEZ8pR8WO/O5iOBi7qbzm21D0J/VUhl4xy6XZ1o0WZ9cTkuvY4jAV0SUP
         k2HG0Mil6I94jw3z8/wIO15/vZGWQa2bZuqZKM2pCGG2LyYBHi3HiY8bz680UJRi+SLl
         P8BhHSDhSxMzIsDA96+HIFMNAnkKZrFohGoK7GI2C3sS3B/IbK18jgj16lMDU/LADs6/
         E81iqhtwzfztXGaR3xwlk/QxPpmVFipCNGrIShtHlM3VZvEc1VKGATiIwiOJH3wleDZU
         vU4JVZ4/N4L3VkapSXn6TRcudaReGT5IPUkBdLbo/e7Pz1GMC2ydqROA30N4ark4ASSD
         +nJw==
X-Forwarded-Encrypted: i=2; AFNElJ+Uvxr5hPzxNPNG0BSjSQOnSOlpzHURwlYvjkGWmQOqYX8SQUPk5paPVDy0zEfGSw+fih0b7M9bpi162v5P@lists.linaro.org
X-Gm-Message-State: AOJu0Yy/lmfNTQFKpQlyl2o7EcNekuEQlZOWBkhupLl3BhD6P+tpnnSG
	RQ2GbGqSKpwBMvyx+wWmL/FgnVzRHuDEmgi9FGVH8CTIsd3M+8vNQx8Z4LPyjf4xsT84rufKpZE
	FHgxfpXFjlOkJvjKIXhowKDzedF6CSQcXhUg7L4NMlM5dIhIIUqxc/RXDKMCyVyMu9q6y5J6Mj8
	rvEuelAvk7CFoooGigDGsDDEL9YXfRJfmBvU+waQSRqcheTU10Bqfk0/uAnaJMW8jJnb4vmQS2b
	JeBqIIBKZg/C7kukLo=
X-Gm-Gg: AeBDiesZ5VxyfwMd1aJG4kJ6iZkyhDeF3BrQiZ61lgyhncxF/F+sPlCTO0FP79MldB4
	Ncn74OfwU2VyRIzEqaSTURFsokGr8I9AheyLjzx7qJq1xdyZu5ZX/rNEcHt5a4+uqedZKSt1ZWf
	18kYvo4zdJvuisiaE0+05GsMXJ6/ylOxgUT3+/rA2GEY2uUuk0rwJDzFXvB6JwtmFwCg4Vyx0GD
	VgHOxNJ1TC2YwLX346f1Ra1gtOLoi49WEyN+wRSk3W5/hMe83CjPjHU9ZORgYDtf1X1kyuBczaE
	1pvBZyPgFRjQkk6LDxmVQkO1Fqp1lK4zRTeAUqEPF5D0RCAAh2AZbnyqiMP77DxnWHJEdTH4sjZ
	Z+hawMYZ2vojyEQxkYUZ5YL8WUIz52rGmVqHpxF6WlFzXFWDhh5n/kGdN37TzS4qZw1BJuBs4f/
	069mAqXpXaSzLSJqA8KUOYRCPySIoYh5V6lu4BjkHpPNSSMhoLcC8aIpY4bjfjdUCt
X-Received: by 2002:a05:6214:4a86:b0:8ac:b24a:f52e with SMTP id 6a1803df08f44-8ae75fa953dmr33015326d6.20.1776310677727;
        Wed, 15 Apr 2026 20:37:57 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-24.dlp.protect.broadcom.com. [144.49.247.24])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-8ae6cbb2433sm2806146d6.20.2026.04.15.20.37.57
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2026 20:37:57 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-5a3fdf4491bso3110011e87.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Apr 2026 20:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776310676; cv=none;
        d=google.com; s=arc-20240605;
        b=RCtaxD7z62IfKsw44qa+1+Kp9DLlzPu1VmHos4XQSlPHGEfNSShW7c1vwvtGcgYwME
         uDwQhu09zahiztwbx1vQaeyREdokxb0mXuEVDgecUaWb4lNDXeg73zwMY3FHQQT8I0F/
         q4aJ0pM/bGV8CLpURIj2DMK0UPm/7OeO44Jdlby1QJv28XnIV4ZSHI2sLp9Cz06JVo9r
         G+sdDgLlQBjo5d4jyCxlk1i6RuKb7JdwZL5kmSnlmUvPAgzd+YUhm6p6Nqwklb47EkJr
         33ACl7HLt67yxIbZhnc0PEXGBUJtR2vk4Sr80nU85C+NXDEsuJUalIDOBTaHvBwJMnn1
         /2rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7kAaWT9Kw2pYh1scCxkCtPy3JidiiNKYvadPHq6hbfo=;
        fh=W9yBFNSHiY17YraiA8A55oQqBtCA+Bk5hcXkUXirOu4=;
        b=ERQivwBjDnuyw4dSOgOBPZZDmnE/0wr76Wh2u/b8ANRYXxO0r2pQbTpcEmORNvDSQF
         bghIRPMOYI5Os6WL2jiscf4Y4JY6BMR9lKHnTMWFq0MQYykg+aIqJbMvlz9f1nK9VjII
         VbdN6wQWSZMR4Bsrgk1MNLxiFk6nG2DUCPvp20QiK2ikDc/foy3KTiZPWJXyHmwQWvmt
         k1ImJqDOFmMbnUUiJISsf5ShbnLU46YViN1B5XZ3DvgG+ZboaQ/f7+0rg4wOveFuAvI+
         zkWOhKW+e8GYQ3Ftc5A15QC2RoS/kODf47p6vMMpwE06Kcj6OMcPcMZye/ozhAWIKWb8
         L48g==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1776310676; x=1776915476; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7kAaWT9Kw2pYh1scCxkCtPy3JidiiNKYvadPHq6hbfo=;
        b=QGZ0YyzmzqfxPVlVglgLF/2MICkuqjNmvU8qkRqBTylyXTohjrnB1w+lYFsGt5sU62
         HmHH91MZVuc2ESRZcJUnOkBlkhmhAm1TRqCDnJRvXnmaw4vlIAuys8XC36S0aMpYJJb1
         PsiMoCIgiZypAAfzLN8+0BdyGxFYAlMumJFhk=
X-Forwarded-Encrypted: i=1; AFNElJ+wyEOxTc2zEDrrDHzaDOPfCSsdzigdevWkGhOxTzzBsKMvYkJr+fFmknkgc53qxddZSIg0Q8VJ7KIx7jUF@lists.linaro.org
X-Received: by 2002:a05:6512:3e28:b0:5a2:ad98:3685 with SMTP id 2adb3069b0e04-5a3efd90bbfmr7195886e87.35.1776310675885;
        Wed, 15 Apr 2026 20:37:55 -0700 (PDT)
X-Received: by 2002:a05:6512:3e28:b0:5a2:ad98:3685 with SMTP id
 2adb3069b0e04-5a3efd90bbfmr7195870e87.35.1776310675337; Wed, 15 Apr 2026
 20:37:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260414105529.9883-1-popov.nkv@gmail.com> <ecf4cd01-b05d-4f51-943a-631cc4b27331@amd.com>
 <CABQX2QMH2XFcuz00DQQWU4uKw2B8OzE4rCE5=8LMXDg4t0AqWQ@mail.gmail.com> <9a33c8b4-64f1-400f-b8a0-0972ea5b5ecf@amd.com>
In-Reply-To: <9a33c8b4-64f1-400f-b8a0-0972ea5b5ecf@amd.com>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Wed, 15 Apr 2026 23:37:41 -0400
X-Gm-Features: AQROBzBeTXAsyPXmmTJlvmAfqcZclh41H9HUgy916nOi9mKbcOMPsijik6exNAU
Message-ID: <CABQX2QPatyzmoTJYv3C52aUfE2qS4bEr-01J5XbQnay94vs1Cg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Spamd-Bar: -------
X-MailFrom: zack.rusin@broadcom.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IAN3JGUYFHTHOIJDOJBOQ2SYHUYWMP35
X-Message-ID-Hash: IAN3JGUYFHTHOIJDOJBOQ2SYHUYWMP35
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:34 +0000
CC: popov.nkv@gmail.com, bcm-kernel-feedback-list@broadcom.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org, stable@vger.kernel.org, Ian Forbes <ian.forbes@broadcom.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15901/15901] drm/vmwgfx: fix NULL pointer dereference in vmw_validation_bo_fence()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IAN3JGUYFHTHOIJDOJBOQ2SYHUYWMP35/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6683814447770547729=="
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[broadcom.com : SPF not aligned (relaxed),reject];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[110];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[broadcom.com:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[broadcom.com:-];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[zack.rusin@broadcom.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,broadcom.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linuxtesting.org];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2D9B1431F43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6683814447770547729==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000df337e064f8b8e3a"

--000000000000df337e064f8b8e3a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2026 at 3:56=E2=80=AFAM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> On 4/15/26 03:08, Zack Rusin wrote:
> > On Tue, Apr 14, 2026 at 9:25=E2=80=AFAM Christian K=C3=B6nig
> > <christian.koenig@amd.com> wrote:
> >>
> >> On 4/14/26 12:55, popov.nkv@gmail.com wrote:
> >>> From: Vladimir Popov <popov.nkv@gmail.com>
> >>>
> >>> If vmw_execbuf_fence_commands() call fails in
> >>> vmw_kms_helper_validation_finish(), it sets *p_fence =3D NULL. If
> >>> ctx->bo_list is not empty, the caller, vmw_kms_helper_validation_fini=
sh(),
> >>> passes the fence through a chain of functions to dma_fence_is_array()=
,
> >>> which causes a NULL pointer dereference in dma_fence_is_array():
> >>>
> >>> vmw_kms_helper_validation_finish() // pass NULL fence
> >>>   vmw_validation_done()
> >>>     vmw_validation_bo_fence()
> >>>       ttm_eu_fence_buffer_objects() // pass NULL fence
> >>>         dma_resv_add_fence()
> >>>           dma_fence_is_container()
> >>>             dma_fence_is_array() // NULL deref
> >>
> >> Well good catch, but that is clearly not the right fix.
> >>
> >> I'm not an expert for the vmwgfx code but in case of an error vmw_vali=
dation_revert() should be called an not vmw_kms_helper_validation_finish().
> >
> > To me the patch looks correct. This path is explicitly for submission
> > failure and does BO backoff plus vmw_validation_res_unreserve(ctx,
> > true). The backoff=3Dtrue branch skips committing dirty-state /
> > backup-MOB changes, which is only correct if commands were not
> > committed. Here the commands have already been submitted; only fence
> > creation failed. So I think unlocking BO reservations without
> > attaching a fence, then letting vmw_validation_done() keep taking the
> > success path for resources is correct.
>
> Ah! I would just avoid adding more TTM exec code dependencies.
>
> We also have the always signaled stub fence for such use cases. How about=
 that change here:
>
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c b/drivers/gpu/drm/vm=
wgfx/vmwgfx_execbuf.c
> index e1f18020170a..8dcb8cd19e29 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c
> @@ -3843,7 +3843,7 @@ int vmw_execbuf_fence_commands(struct drm_file *fil=
e_priv,
>         if (unlikely(ret !=3D 0 && !synced)) {
>                 (void) vmw_fallback_wait(dev_priv, false, false, sequence=
,
>                                          false, VMW_FENCE_WAIT_TIMEOUT);
> -               *p_fence =3D NULL;
> +               *p_fence =3D dma_fence_get_stub();
>         }
>
>         return ret;

Yeah, that would be an ideal cleanup, but it needs a lot more work.
The p_fence is a vmw_fence_obj so we'll need to write code that allows
creation of vmw_fence_obj with a signaled dma_fence and then plumb
that through the driver. We'll also have to change a bunch of places
(especially in older kms code) in vmwgfx that treat null fence as "the
device has already synchronized". It's the right path, but to fix this
particular issue I'd be happy to take Vladimir patch for now and
perhaps I'd ask Ian to put a proper cleanup on his todo.

z

--000000000000df337e064f8b8e3a
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIVIgYJKoZIhvcNAQcCoIIVEzCCFQ8CAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ghKPMIIGqDCCBJCgAwIBAgIQfofDCS7XZu8vIeKo0KeY9DANBgkqhkiG9w0BAQwFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSNjETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMzA0MTkwMzUzNTNaFw0yOTA0MTkwMDAwMDBaMFIxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBS
NiBTTUlNRSBDQSAyMDIzMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwjAEbSkPcSyn
26Zn9VtoE/xBvzYmNW29bW1pJZ7jrzKwPJm/GakCvy0IIgObMsx9bpFaq30X1kEJZnLUzuE1/hlc
hatYqyORVBeHlv5V0QRSXY4faR0dCkIhXhoGknZ2O0bUJithcN1IsEADNizZ1AJIaWsWbQ4tYEYj
ytEdvfkxz1WtX3SjtecZR+9wLJLt6HNa4sC//QKdjyfr/NhDCzYrdIzAssoXFnp4t+HcMyQTrj0r
pD8KkPj96sy9axzegLbzte7wgTHbWBeJGp0sKg7BAu+G0Rk6teO1yPd75arbCvfY/NaRRQHk6tmG
71gpLdB1ZhP9IcNYyeTKXIgfMh2tVK9DnXGaksYCyi6WisJa1Oa+poUroX2ESXO6o03lVxiA1xyf
G8lUzpUNZonGVrUjhG5+MdY16/6b0uKejZCLbgu6HLPvIyqdTb9XqF4XWWKu+OMDs/rWyQ64v3mv
Sa0te5Q5tchm4m9K0Pe9LlIKBk/gsgfaOHJDp4hYx4wocDr8DeCZe5d5wCFkxoGc1ckM8ZoMgpUc
4pgkQE5ShxYMmKbPvNRPa5YFzbFtcFn5RMr1Mju8gt8J0c+dxYco2hi7dEW391KKxGhv7MJBcc+0
x3FFTnmhU+5t6+CnkKMlrmzyaoeVryRTvOiH4FnTNHtVKUYDsCM0CLDdMNgoxgkCAwEAAaOCAX4w
ggF6MA4GA1UdDwEB/wQEAwIBhjBMBgNVHSUERTBDBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQB
gjcUAgIGCisGAQQBgjcKAwwGCisGAQQBgjcKAwQGCSsGAQQBgjcVBjASBgNVHRMBAf8ECDAGAQH/
AgEAMB0GA1UdDgQWBBQAKTaeXHq6D68tUC3boCOFGLCgkjAfBgNVHSMEGDAWgBSubAWjkxPioufi
1xzWx/B/yGdToDB7BggrBgEFBQcBAQRvMG0wLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwMi5nbG9i
YWxzaWduLmNvbS9yb290cjYwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjYuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yNi5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0GCSqGSIb3DQEBDAUAA4IC
AQCRkUdr1aIDRmkNI5jx5ggapGUThq0KcM2dzpMu314mJne8yKVXwzfKBtqbBjbUNMODnBkhvZcn
bHUStur2/nt1tP3ee8KyNhYxzv4DkI0NbV93JChXipfsan7YjdfEk5vI2Fq+wpbGALyyWBgfy79Y
IgbYWATB158tvEh5UO8kpGpjY95xv+070X3FYuGyeZyIvao26mN872FuxRxYhNLwGHIy38N9ASa1
Q3BTNKSrHrZngadofHglG5W3TMFR11JOEOAUHhUgpbVVvgCYgGA6dSX0y5z7k3rXVyjFOs7KBSXr
dJPKadpl4vqYphH7+P40nzBRcxJHrv5FeXlTrb+drjyXNjZSCmzfkOuCqPspBuJ7vab0/9oeNERg
nz6SLCjLKcDXbMbKcRXgNhFBlzN4OUBqieSBXk80w2Nzx12KvNj758WavxOsXIbX0Zxwo1h3uw75
AI2v8qwFWXNclO8qW2VXoq6kihWpeiuvDmFfSAwRLxwwIjgUuzG9SaQ+pOomuaC7QTKWMI0hL0b4
mEPq9GsPPQq1UmwkcYFJ/Z4I93DZuKcXmKMmuANTS6wxwIEw8Q5MQ6y9fbJxGEOgOgYL4QIqNULb
5CYPnt2LeiIiEnh8Uuh8tawqSjnR0h7Bv5q4mgo3L1Z9QQuexUntWD96t4o0q1jXWLyrpgP7Zcnu
CzCCBYMwggNroAMCAQICDkXmuwODM8OFZUjm/0VRMA0GCSqGSIb3DQEBDAUAMEwxIDAeBgNVBAsT
F0dsb2JhbFNpZ24gUm9vdCBDQSAtIFI2MRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpH
bG9iYWxTaWduMB4XDTE0MTIxMDAwMDAwMFoXDTM0MTIxMDAwMDAwMFowTDEgMB4GA1UECxMXR2xv
YmFsU2lnbiBSb290IENBIC0gUjYxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2Jh
bFNpZ24wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCVB+hzymb57BTKezz3DQjxtEUL
LIK0SMbrWzyug7hBkjMUpG9/6SrMxrCIa8W2idHGsv8UzlEUIexK3RtaxtaH7k06FQbtZGYLkoDK
RN5zlE7zp4l/T3hjCMgSUG1CZi9NuXkoTVIaihqAtxmBDn7EirxkTCEcQ2jXPTyKxbJm1ZCatzEG
xb7ibTIGph75ueuqo7i/voJjUNDwGInf5A959eqiHyrScC5757yTu21T4kh8jBAHOP9msndhfuDq
jDyqtKT285VKEgdt/Yyyic/QoGF3yFh0sNQjOvddOsqi250J3l1ELZDxgc1Xkvp+vFAEYzTfa5MY
vms2sjnkrCQ2t/DvthwTV5O23rL44oW3c6K4NapF8uCdNqFvVIrxclZuLojFUUJEFZTuo8U4lptO
TloLR/MGNkl3MLxxN+Wm7CEIdfzmYRY/d9XZkZeECmzUAk10wBTt/Tn7g/JeFKEEsAvp/u6P4W4L
sgizYWYJarEGOmWWWcDwNf3J2iiNGhGHcIEKqJp1HZ46hgUAntuA1iX53AWeJ1lMdjlb6vmlodiD
D9H/3zAR+YXPM0j1ym1kFCx6WE/TSwhJxZVkGmMOeT31s4zKWK2cQkV5bg6HGVxUsWW2v4yb3BPp
DW+4LtxnbsmLEbWEFIoAGXCDeZGXkdQaJ783HjIH2BRjPChMrwIDAQABo2MwYTAOBgNVHQ8BAf8E
BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUrmwFo5MT4qLn4tcc1sfwf8hnU6AwHwYD
VR0jBBgwFoAUrmwFo5MT4qLn4tcc1sfwf8hnU6AwDQYJKoZIhvcNAQEMBQADggIBAIMl7ejR/ZVS
zZ7ABKCRaeZc0ITe3K2iT+hHeNZlmKlbqDyHfAKK0W63FnPmX8BUmNV0vsHN4hGRrSMYPd3hckSW
tJVewHuOmXgWQxNWV7Oiszu1d9xAcqyj65s1PrEIIaHnxEM3eTK+teecLEy8QymZjjDTrCHg4x36
2AczdlQAIiq5TSAucGja5VP8g1zTnfL/RAxEZvLS471GABptArolXY2hMVHdVEYcTduZlu8aHARc
phXveOB5/l3bPqpMVf2aFalv4ab733Aw6cPuQkbtwpMFifp9Y3s/0HGBfADomK4OeDTDJfuvCp8g
a907E48SjOJBGkh6c6B3ace2XH+CyB7+WBsoK6hsrV5twAXSe7frgP4lN/4Cm2isQl3D7vXM3PBQ
ddI2aZzmewTfbgZptt4KCUhZh+t7FGB6ZKppQ++Rx0zsGN1s71MtjJnhXvJyPs9UyL1n7KQPTEX/
07kwIwdMjxC/hpbZmVq0mVccpMy7FYlTuiwFD+TEnhmxGDTVTJ267fcfrySVBHioA7vugeXaX3yL
SqGQdCWnsz5LyCxWvcfI7zjiXJLwefechLp0LWEBIH5+0fJPB1lfiy1DUutGDJTh9WZHeXfVVFsf
rSQ3y0VaTqBESMjYsJnFFYQJ9tZJScBluOYacW6gqPGC6EU+bNYC1wpngwVayaQQMIIGWDCCBECg
AwIBAgIMYT8cPnonh1geNIT5MA0GCSqGSIb3DQEBCwUAMFIxCzAJBgNVBAYTAkJFMRkwFwYDVQQK
ExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBDQSAy
MDIzMB4XDTI0MTEyODA2NTUwOVoXDTI2MTEyOTA2NTUwOVowgaUxCzAJBgNVBAYTAlVTMRMwEQYD
VQQIEwpDYWxpZm9ybmlhMREwDwYDVQQHEwhTYW4gSm9zZTEZMBcGA1UEYRMQTlRSVVMrREUtNjYx
MDExNzEWMBQGA1UEChMNQlJPQURDT00gSU5DLjETMBEGA1UEAxMKWmFjayBSdXNpbjEmMCQGCSqG
SIb3DQEJARYXemFjay5ydXNpbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQCwQ8KpnuEwUOX0rOrLRj3vS0VImknKwshcmcfA9VtdEQhJHGDQoNjaBEFQHqLqn4Lf
hqEGUo+nKhz2uqGl2MtQFb8oG+yJPCFPgeSvbiRxmeOwSP0jrNADVKpYpy4UApPqS+UfVQXKbwbM
6U6qgI8F5eiKsQyE0HgYrQJx/sDs9LLVZlaNiA3U8M8CgEnb8VhuH3BN/yXphhEQdJXb1TyaJA60
SmHcZdEQZbl4EjwUcs3UIowmI/Mhi7ADQB7VNsO/BaOVBEQk53xH+4djY/cg7jvqTTeliY05j2Yx
uwwXcDC4mWjGzxAT5DVqC8fKQvon1uc2heorHb555+sLdwYxAgMBAAGjggHYMIIB1DAOBgNVHQ8B
Af8EBAMCBaAwgZMGCCsGAQUFBwEBBIGGMIGDMEYGCCsGAQUFBzAChjpodHRwOi8vc2VjdXJlLmds
b2JhbHNpZ24uY29tL2NhY2VydC9nc2djY3I2c21pbWVjYTIwMjMuY3J0MDkGCCsGAQUFBzABhi1o
dHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3I2c21pbWVjYTIwMjMwZQYDVR0gBF4wXDAJ
BgdngQwBBQMBMAsGCSsGAQQBoDIBKDBCBgorBgEEAaAyCgMCMDQwMgYIKwYBBQUHAgEWJmh0dHBz
Oi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwQQYDVR0fBDowODA2
oDSgMoYwaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3I2c21pbWVjYTIwMjMuY3JsMCIG
A1UdEQQbMBmBF3phY2sucnVzaW5AYnJvYWRjb20uY29tMBMGA1UdJQQMMAoGCCsGAQUFBwMEMB8G
A1UdIwQYMBaAFAApNp5ceroPry1QLdugI4UYsKCSMB0GA1UdDgQWBBQNDn2m/OLuDx9YjEqPLCDB
s/VKNTANBgkqhkiG9w0BAQsFAAOCAgEAF463syOLTQkWZmEyyR60W1sM3J1cbnMRrBFUBt3S2NTY
SJ2NAvkTAxbPoOhK6IQdaTyrWi8xdg2tftr5FC1bOSUdxudY6dipq2txe7mEoUE6VlpJid/56Mo4
QJRb6YiykQeIfoJiYMKsyuXWsTB1rhQxlxfnaFxi8Xy3+xKAeX68DcsHG3ZU0h1beBURA44tXcz6
fFDNPQ2k6rWDFz+XNN2YOPqfse2wEm3DXpqNT79ycU7Uva7e51b8XdbmJ6XVzUFmWzhjXy5hvV8z
iF+DvP+KT1/bjO6aNL2/3PWiy1u6xjnWvobHuAYVrXxQ5wzk8aPOnED9Q8pt2nqk/UIzw2f67Cn9
3CxrVqXUKm93J+rupyKVTGgKO9T1ODVPo665aIbM72RxSI9Wsofatm2fo8DWOkrfs29pYfy6eECl
91qfFMl+IzIVfDgIrEX6gSngJ2ZLaG6L+/iNrUxHxxsaUmyDwBbTfjYwr10H6NKES3JaxVRslnpF
06HTTciJNx2wowbYF1c+BFY4r/19LHygijIVa+hZEgNuMrVLyAamaAKZ1AWxTdv8Q/eeNN3Myq61
b1ykTSPCXjBq/03CMF/wT1wly16jYjLDXZ6II/HYyJt34QeqnBENU9zXTc9RopqcuHD2g+ROT7lI
VLi5ffzC8rVliltTltbYPc7F0lAvGKAxggJXMIICUwIBATBiMFIxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMSgwJgYDVQQDEx9HbG9iYWxTaWduIEdDQyBSNiBTTUlNRSBD
QSAyMDIzAgxhPxw+eieHWB40hPkwDQYJYIZIAWUDBAIBBQCggccwLwYJKoZIhvcNAQkEMSIEINFB
rIE9ROoOc0xiUpWtzO6U/Fm02Q/KSp34pKYx00X/MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTI2MDQxNjAzMzc1NlowXAYJKoZIhvcNAQkPMU8wTTALBglghkgBZQME
ASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQcwCwYJ
YIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAG+q0rz1Q4UB2syWSijmwSYPN1TFf5AKljUY44y+
yBlvtwKWYHziOB/5kpoPEYd8VuKyGLjeUv48kB5j6nsP+btZP9uZPCV8rxVjghAuzL1jeh1QPgdr
hQPkfkv9VtA+EK+/K5QwGmuxwgtjGdisE+4Cfaxb0BbjHs9xf5BrHSP4F4ussmYXuWSXLqA1MJq/
6MYPySQAaU+TN3wfl1ffjEfB7DH7+nArNYmCOKkqnMaHJAjv/iUnyvX4KJUJYLyy6szGdYYfhT7J
a+sfKABJY8PyrwV+3jNOdqx9MRtd65hC88xFfWMRoeokekJBaFQhGXC//EkAmcF35KBGjkNtNO8=
--000000000000df337e064f8b8e3a--

--===============6683814447770547729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6683814447770547729==--
