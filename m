Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DWVXAzVrTmpeMQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8E3727F06
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 17:22:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=linaro.org header.s=google header.b=w1wZOapd;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD08A40A1A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2026 15:22:27 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id 61D513F7BA
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 15:22:09 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-c15cf78d1a2so71783066b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 08:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783524128; x=1784128928; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RZIUQ8lhybvuqUO/Qu4fqmCKQSSQtg8HD8yQYy4im0M=;
        b=w1wZOapdG5Jy7jp70k9sHNVUH9ZwNLo3cSCCyNSuELmU6sW0gnkLXEWlIn3GfZiJ1d
         E6ziSChp8WmQ3K6+aFesNwTfXHtB88iNFivDD2UHRrwL4UDNms0l2uNxMqyb69XY61Fg
         umBxD4VyRA7TmF+2g89I79zLVaESm23CMqYgvxFNGOUrP/SiWg4oQPm2NE3rGXiEq8Mq
         WFLzgo9O2fp96Ue2qkLdU4FwCIYYZC0lu+q+x4FQeH6SzMJoxztx9i842LaBF4dqM8XL
         SCpy6FIzJk7IVIfsRV1+tsaZF4e4UJBRU4/kkIIsoYmpLxVw6/Dvz1laJMdfU/ttNS6p
         8LaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783524128; x=1784128928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RZIUQ8lhybvuqUO/Qu4fqmCKQSSQtg8HD8yQYy4im0M=;
        b=V3b9hJj+9zrt16TeVSpcXbYKUMWMBYxWN26/nTEnSbbl9WMP+fGvyVQHzmpPgb+PTX
         Y99jrnE5VvIMNHHeMmfwBW8lMWTQvhzMx43y53xVNjxRBr0i95ZMPnlaO7G86clFVZio
         TydUm/kfDjSqQSqrTFT/ddsgcv3Rq17y+AkdYPl1J/BVGdhBIKl5bGv51gxwhYePFTzr
         yjAlqmVgTM7PM5rdcamtLJbqKf6U53Kjox9OW3zXpWYXeVgKJUq1cHRCof9FkyAsHRRy
         mTRU0TSpqpn8cB3GxdTnGmEw8MKBhmqSpsbL/+OunL9PXqjtfq3TB8/qCAhSgR5ONehL
         OmAA==
X-Forwarded-Encrypted: i=1; AHgh+Rriz++EiUXikaa3RdljHbDBARINiImlXdPBv71utCNQL2XcJ2X0YZYGHGvg5TGYlQBjCEc3Gopm4RdNU5WA@lists.linaro.org
X-Gm-Message-State: AOJu0YxEOptJ46smVmcxlFl2H4rk4NbC9O4bcBinbLLSGVEa+7kD3kON
	r3m4HUmtlYsZJHYYQQUeU+fGR2Ohccs/w3ZYw16Bnng3Iv27fIc5RXepbFSqmy7bXG6Emw==
X-Gm-Gg: AfdE7clMkL+ac2PCUUPYDu5ct87LMLQkKiE4YtYMY04MR+KgixxARv77r+pGn+4iplI
	VDtUAvd+Jj7P3UnXg+O3TBgZsoShTlQ3Ie0cTsaLHewrLP+ELpQV/vwQQiNK7OL48S384dBw4jW
	Xp+hlxcZTJndWBx1vopFfPZJ4eBqoXL4cNrlcf/2wvzW7rqs0DN9cXhMBIyopTre6ltMUjKg5R2
	Yds8aR5yBQAAi3OgSIyyxQW9mLOc2VucELv1Cr/JX7Tg+N1ySKLcDj2juPbpBqZoz7WNTyCDWsb
	ccKpLqfBujxDum7NJZvTnJ8DBGwOBmlN6ELpPvtgHCbhhhU5b6+YudDqWXnN5aRIpNA6Qp/iKuz
	r62OR81Z/YOvilUXkoehVNTD8gO5mF5FocP6DEz+4C0E9SBMu9a9DxRuZ6HBXoxhHm+KWp1XSEc
	dbM0BD0QY2MRJvMH4+AZz9j3Db91lhaJibP+4gFvJIOxmBElIua7XnFDyDKg9wWV2afnKyPVw0/
	eHDlDM=
X-Received: by 2002:a17:906:f0d1:b0:c15:cc30:6c70 with SMTP id a640c23a62f3a-c15ce0c06damr103325566b.42.1783524128259;
        Wed, 08 Jul 2026 08:22:08 -0700 (PDT)
Received: from puffmais2.c.googlers.com (181.179.204.35.bc.googleusercontent.com. [35.204.179.181])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15beb53b86sm213932966b.25.2026.07.08.08.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 08:22:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 08 Jul 2026 16:22:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260708-linux-drm_crtc_fix2-v2-1-cf72be75d75a@linaro.org>
References: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
In-Reply-To: <20260708-linux-drm_crtc_fix2-v2-0-cf72be75d75a@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Stanner <phasta@kernel.org>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
Message-ID-Hash: IDH32LZSZ6TPZNQNN5GIHHX4NSCXKCSC
X-Message-ID-Hash: IDH32LZSZ6TPZNQNN5GIHHX4NSCXKCSC
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/2] drm/drm_crtc: ensure dma_fence_ops remain valid during device unbind
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDH32LZSZ6TPZNQNN5GIHHX4NSCXKCSC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:andre.draszik@linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linaro.org:from_mime,linaro.org:email,linaro.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D8E3727F06

SW4gWzFdLCBzYXNoaWtvIHJlcG9ydGVkIHRoZSBmb2xsb3dpbmcgaXNzdWU6DQoNCj09PSBzbmlw
ID09PQ0KTG9va2luZyBhdCBob3cgdGhlc2UgZmVuY2VzIGFyZSBtYW5hZ2VkLCBkcm1fY3J0Y19j
cmVhdGVfZmVuY2UoKQ0KY3JlYXRlcyBhIGRtYV9mZW5jZSB3aXRob3V0IHRha2luZyBhIHJlZmVy
ZW5jZSB0byB0aGUgZHJtX2RldmljZSBvcg0KZHJtX2NydGMuIEJlY2F1c2UgdGhlIHN5bmNfZmls
ZSBmcmFtZXdvcmsgZXhwb3NlcyB0aGlzIGZlbmNlIHRvDQp1c2Vyc3BhY2UsIHRoZSBmZW5jZSBj
YW4gb3V0bGl2ZSB0aGUgQ1JUQy4NCg0KVGhlIGRtYV9mZW5jZSBjb250cmFjdCByZXF1aXJlcyB0
aGF0IGRhdGEgYWNjZXNzZWQgYnkgZG1hX2ZlbmNlX29wcw0KKGxpa2UgZ2V0X2RyaXZlcl9uYW1l
KSBtdXN0IHJlbWFpbiB2YWxpZCBmb3IgYW4gUkNVIGdyYWNlIHBlcmlvZCBhZnRlcg0KdGhlIGZl
bmNlIGlzIHNpZ25hbGVkLiBIb3dldmVyLCBkcm1fY3J0Y19jbGVhbnVwKCkgYW5kIHRoZSBzdWJz
ZXF1ZW50DQpmcmVlaW5nIG9mIHRoZSBkZXZpY2UgZG8gbm90IHdhaXQgZm9yIGFuIFJDVSBncmFj
ZSBwZXJpb2QgdmlhDQpzeW5jaHJvbml6ZV9yY3UoKS4NCg0KSWYgdXNlcnNwYWNlIGNhbGxzIGlv
Y3RsKFNZTkNfSU9DX0ZJTEVfSU5GTykgY29uY3VycmVudGx5IHdpdGggYSBkZXZpY2UNCmhvdC11
bnBsdWc6DQoNCkNQVTEgKFVzZXJzcGFjZSkNCnN5bmNfZmlsZV9nZXRfbmFtZSgpDQogIG9wcyA9
IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCiAgaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWdu
YWxlZF9mbGFnKCkpDQogICAgLy8gUHJlZW1wdGVkIG9yIGRlbGF5ZWQgaGVyZQ0KDQpDUFUyIChE
cml2ZXIgVGVhcmRvd24pDQpTaWduYWxzIHRoZSBmZW5jZSAoc2V0dGluZyBmZW5jZS0+b3BzID0g
TlVMTCkNCkRlc3Ryb3lzIGFuZCBmcmVlcyB0aGUgQ1JUQyB3aXRob3V0IHdhaXRpbmcgZm9yIGFu
IFJDVSBncmFjZSBwZXJpb2QNCg0KQ1BVMSAoUmVzdW1lcykNCiAgb3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpIC0+IGRybV9jcnRjX2ZlbmNlX2dldF9kcml2ZXJfbmFtZSgpDQogIGNydGMgPSBm
ZW5jZV90b19jcnRjKGZlbmNlKTsgLy8gQ2FzdHMgdG8gdGhlIGZyZWVkIENSVEMNCiAgcmV0dXJu
IGNydGMtPmRldi0+ZHJpdmVyLT5uYW1lOyAvLyBVc2UtYWZ0ZXItZnJlZQ0KDQouLi4NCg0KRG9l
cyB0aGUgQ1JUQyBvciBEUk0gZGV2aWNlIG5lZWQgdG8gYmUga2VwdCBhbGl2ZSBmb3IgdGhlIFJD
VSBncmFjZQ0KcGVyaW9kLCBvciBzaG91bGQgdGhlIGZlbmNlIGhvbGQgYSBwcm9wZXIgcmVmZXJl
bmNlIHRvIHByZXZlbnQgdGhlDQp1c2UtYWZ0ZXItZnJlZSB3aGVuIGdldF9kcml2ZXJfbmFtZSgp
IGFuZCBnZXRfdGltZWxpbmVfbmFtZSgpIGFjY2Vzcw0KdGhlIGZyZWVkIENSVEMgc3RydWN0dXJl
Pw0KPT09IHNuYXAgPT09DQoNCkkgYmVsaWV2ZSB0aGlzIHRvIGJlIGEgY29ycmVjdCBvYnNlcnZh
dGlvbiBhbmQgdGhpcyBwYXRjaCBpbXBsZW1lbnRzDQp0aGUgc3VnZ2VzdGlvbiBvZiB3YWl0aW5n
IGZvciBhbiBSQ1UgZ3JhY2UgcGVyaW9kIGJlZm9yZSBwcm9jZWVkaW5nDQp3aXRoIGRlc3RydWN0
aW9uIG9mIHRoZSBkcm1fY3J0Yywgc28gdGhhdCBnZXRfZHJpdmVyX25hbWUoKSBhbmQNCmdldF90
aW1lbGluZV9uYW1lKCkgY2FuIHN0aWxsIHdvcmsuDQoNCkxpbms6IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDYxOC1saW51eC1kcm1fY3J0Y19maXgyLXYxLTEtYzAzZTc3YjM2
ZjM0QGxpbmFyby5vcmc/cGFydD0xDQpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9jcnRjLmMg
fCA2ICsrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jcnRj
LmMNCmluZGV4IDYzZWFkOGJhNjc1Ni4uZDU1ZjEzNzdlYzM2IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9jcnRjLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Yy5jDQpA
QCAtNTAxLDYgKzUwMSwxMiBAQCB2b2lkIGRybV9jcnRjX2NsZWFudXAoc3RydWN0IGRybV9jcnRj
ICpjcnRjKQ0KIHsNCiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmRldjsNCiANCisJ
LyogRW5zdXJlIG91ciBkbWFfZmVuY2Vfb3BzIHJlbWFpbiB2YWxpZCBmb3IgYW4gUkNVIGdyYWNl
IHBlcmlvZCBhZnRlcg0KKwkgKiB0aGUgZmVuY2UgaXMgc2lnbmFsZWQuIFRoaXMgaXMgbmVjZXNz
YXJ5IGJlY2F1c2Ugb3VyIGRtYV9mZW5jZV9vcHMNCisJICogZGVyZWZlcmVuY2UgY3J0Yy0+ZGV2
Lg0KKwkgKi8NCisJc3luY2hyb25pemVfcmN1KCk7DQorDQogCS8qIE5vdGUgdGhhdCB0aGUgY3J0
Y19saXN0IGlzIGNvbnNpZGVyZWQgdG8gYmUgc3RhdGljOyBzaG91bGQgd2UNCiAJICogcmVtb3Zl
IHRoZSBkcm1fY3J0YyBhdCBydW50aW1lIHdlIHdvdWxkIGhhdmUgdG8gZGVjcmVtZW50IGFsbA0K
IAkgKiB0aGUgaW5kaWNlcyBvbiB0aGUgZHJtX2NydGMgYWZ0ZXIgdXMgaW4gdGhlIGNydGNfbGlz
dC4NCg0KLS0gDQoyLjU1LjAuNzk1Lmc2MDJmNmMzMjlhLWdvb2cNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
