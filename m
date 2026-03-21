Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOIXA5xh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CD74312C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B0593F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:46 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 88D723F85D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 21 Mar 2026 17:19:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=tomeuvizoso-net.20230601.gappssmtp.com header.s=20230601 header.b="Z/8k7Bra";
	spf=pass (lists.linaro.org: domain of tomeu@tomeuvizoso.net designates 209.85.219.52 as permitted sender) smtp.mailfrom=tomeu@tomeuvizoso.net;
	dmarc=none
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-89c5446f3caso19371716d6.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 21 Mar 2026 10:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1774113559; x=1774718359; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7vHL3NHwLvAmvTyDujeMAKynQAKPZxIj2hZIIbS3qhE=;
        b=Z/8k7BraVLpfXHCiaA22ntPC3hdvk3UyoOJaAPYvaBtzjmEO84LkIM1OmXv72HhbtF
         wJ0MdAwq8P40ootCS046CBOcANc1OELGOLYr1J2LdH9Jx3/rWr+y2aFQnIefT0yYm4xO
         adBVqCZxwleRVdU6NpwzmHcq8spxcj+XreQr3BroZcjYTekLUadZcVPmSFcczea5Skoe
         EnEE8mZdnHXpmp/y0oybAZB+KS6lGPA6a5vhcfLVIK6J4DAf0TAU+AwJFq5SvNIcYIwY
         l4HzQx4XxWtMX14B9sHglHTtCm9tZ2WXo3Tz4XnmounV55RXJqwTm/c+l7gHbz2SdHjP
         /iAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774113559; x=1774718359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7vHL3NHwLvAmvTyDujeMAKynQAKPZxIj2hZIIbS3qhE=;
        b=iq63Stdj6YOGTHGOVeMSEyfCpxW3TpFzSZU5Fgtvp1yFsu1gqce4xJNK8WgokRS4xi
         TWZXsE2KHs3oSTHQb01Kr+ovO8k/1WdSheocc25fjp/vefthPL+yRih3VM6W8vfG18mN
         r+HUeLgGyGdFlEBGpZZ3Yy5oPTYwBRxu/TwIsphl3sdKTkZdiZICdVwBD7NLa6YiD5Pu
         uB2+yIhiJRH3BDRL3HJpk07xFPIb/QIkpRSLpUhcDkapO6PS3E7A8Z2C3VneM2+MsI5I
         yB/z3/poY7QUivj/j3mKg91jHiNxkO2V9E4YxLYa+DZFsBDJk1UURgBZuTSxc6ECLhUF
         b0tQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoVVUdUVXiE2j9nTIGGqJhv3yllAw+PVJvwSZsoOzZiVsv+5SfPX8jGKXhtPW7vO2NS5CuTPZUfklcB//u@lists.linaro.org
X-Gm-Message-State: AOJu0YzXBZsdpfWJm/kD1B42eRCSN0lbII+Bh3brLhXQVgCkrEyrmzox
	ZM3sAxOzAcbkwpLPvEP05rbVwxtDFBcl+VCBW88nZdz8cUBAthaxopfLZGg5UhFAT1oRKOE1z+w
	npf9FpRuoHV1+
X-Gm-Gg: ATEYQzw5Q+QDJX6iZtgjYwq414bL6yEfKhwbX1hf8HfMOfdS6aT7B6/ExdjoEDrLKQg
	7UL+gcw/WEt8CXtcXLTu3fG9mnLue4cpbJ4ld6n/ysPz2kHy4wFqjemXCmOzyQ6wBI4XJU9cU3D
	VCpe8wBBfddE62vcKck0YkNnZvhysjcNyZksanIOoxa1Ir0rSTE2R3e2H+WYQ5+XRmperNVoC7J
	b8M1WjX2le5lyJs20Nk5W/ZJAi7BYcQ4jQ6mPld2O5FbfDY/FzIvAZhtnP9ip5LXwIaWSMVWVh1
	DlP1WuJ0LUT6JXSzQp9jXwnXWDbfPhHuAN4LvELDs1fcblK1MGeHA+a+/e4jdMYXzoLmzViF4/V
	lSHizGD9fHewkoeQJDLVgnBg7V3ylJl/MpCiIvrEPrCVRGdH9ywjPf15C3PNr2DMP7Lj/7ZykjP
	7RcQTFPeQhLTxhzPhNNpFge5kCEXQuJ49cNTeLXCIZEUwjurrYb0B0mnSXUP0EMg==
X-Received: by 2002:a05:6214:3901:b0:89c:6a17:3d5b with SMTP id 6a1803df08f44-89c859d75e6mr118591236d6.18.1774113558984;
        Sat, 21 Mar 2026 10:19:18 -0700 (PDT)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com. [209.85.219.43])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85381a8asm56388416d6.49.2026.03.21.10.19.17
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2026 10:19:18 -0700 (PDT)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-89c43c4c383so20375066d6.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 21 Mar 2026 10:19:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWp6Zi2/qvEYNMyLL/IJTo9lQOoWVN5mw5NqT00su/PP2zMR3l/qk6jRGJOvxwsYsp46ZNQ8kzk9o4UhqyS@lists.linaro.org
X-Received: by 2002:a05:6214:2503:b0:895:4bec:c629 with SMTP id
 6a1803df08f44-89c85a4415dmr120844646d6.31.1774113557567; Sat, 21 Mar 2026
 10:19:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com>
In-Reply-To: <20260306-neutron-v2-0-3019bd8c91ef@nxp.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sat, 21 Mar 2026 18:19:06 +0100
X-Gmail-Original-Message-ID: <CAAObsKDAzfib86rXqt9FjXV68yRkBzmijcyR+x=1MsPYd=MQWQ@mail.gmail.com>
X-Gm-Features: AaiRm51EiMaDZyOBoTxsmzhD9LKdQqqk1TUMHYTLZEpIizj3O9FXdJaoYzmTmY0
Message-ID: <CAAObsKDAzfib86rXqt9FjXV68yRkBzmijcyR+x=1MsPYd=MQWQ@mail.gmail.com>
To: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Spamd-Bar: ---
X-MailFrom: tomeu@tomeuvizoso.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4WO5XXNJOEK7QO4KOXWIKTG2NNAP64IA
X-Message-ID-Hash: 4WO5XXNJOEK7QO4KOXWIKTG2NNAP64IA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:23 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/9] accel: New driver for NXP's Neutron NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WO5XXNJOEK7QO4KOXWIKTG2NNAP64IA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[720];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[tomeuvizoso.net];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.997];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 18CD74312C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgSW9hbmEsDQoNCkxvb2tzIGxpa2UgdGhlIHVzZXJzcGFjZSBwb3J0aW9uIG9mIHRoZSBkcml2
ZXIgaXMgY2xvc2VkIHNvdXJjZQ0KKGxpYk5ldXRyb25Ecml2ZXIuc28pPw0KDQpodHRwczovL2dp
dGh1Yi5jb20vbnhwLWlteC90ZmxpdGUtbmV1dHJvbi1kZWxlZ2F0ZS9ibG9iL2xmLTYuMTIuNDlf
Mi4yLjAvQ01ha2VMaXN0cy50eHQNCg0KUmVnYXJkcywNCg0KVG9tZXUNCg0KT24gRnJpLCBNYXIg
NiwgMjAyNiBhdCAyOjI34oCvUE0gSW9hbmEgQ2lvY29pLVJhZHVsZXNjdQ0KPHJ1eGFuZHJhLnJh
ZHVsZXNjdUBueHAuY29tPiB3cm90ZToNCj4NCj4gSW50cm9kdWNlIGEgbmV3IGFjY2VsIGRyaXZl
ciBmb3IgdGhlIE5ldXRyb24gTmV1cmFsIFByb2Nlc3NpbmcgVW5pdA0KPiAoTlBVKSwgYWxvbmcg
d2l0aCBhc3NvY2lhdGVkIGR0LWJpbmRpbmdzIGFuZCBEVFMgbm9kZS4NCj4NCj4gVGhlIGZpcnN0
IHBhdGNoIGV4dGVuZHMgdGhlIEdFTSBETUEgaGVscGVyIEFQSXMgdG8gYWxsb3cgYmlkaXJlY3Rp
b25hbA0KPiBtYXBwaW5nIG9mIG5vbi1jb2hlcmVudCBETUEgYnVmZmVycy4gV2hpbGUgbm90IHBh
cnQgb2YgdGhlIE5ldXRyb24NCj4gZHJpdmVyLCBpdCdzIGEgcHJlcmVxdWlzaXRlIGFsbG93aW5n
IHVzIHRvIHVzZSB0aGUgR0VNIERNQSBoZWxwZXIuDQo+DQo+IE5ldXRyb24gaXMgYSBOZXVyYWwg
UHJvY2Vzc2luZyBVbml0IGZyb20gTlhQLCBwcm92aWRpbmcgbWFjaGluZQ0KPiBsZWFybmluZyAo
TUwpIGFjY2VsZXJhdGlvbiBmb3IgZWRnZSBBSSBhcHBsaWNhdGlvbnMuIE5ldXRyb24gaXMNCj4g
aW50ZWdyYXRlZCBvbiBOWFAgU29DcyBzdWNoIGFzIHRoZSBpLk1YOTUuDQo+DQo+IFRoZSBOUFUg
Y29uc2lzdHMgb2YgdGhlIGZvbGxvd2luZzoNCj4gLSBSSVNDLVYgY29yZSBydW5uaW5nIGEgcHJv
cHJpZXRhcnkgZmlybXdhcmUNCj4gLSBPbmUgb3IgbW9yZSBOZXV0cm9uIGNvcmVzLCByZXByZXNl
bnRpbmcgdGhlIG1haW4gY29tcHV0YXRpb24NCj4gICBlbmdpbmUgcGVyZm9ybWluZyBNTCBvcGVy
YXRpb25zDQo+IC0gRGVkaWNhdGVkIGZhc3QgbWVtb3J5IChUQ00pDQo+IC0gRE1BIGVuZ2luZSB0
aGF0IGhhbmRsZXMgZGF0YSB0cmFuc2ZlcnMgYmV0d2VlbiBERFIgYW5kIFRDTQ0KPg0KPiBUaGUg
ZmlybXdhcmUgaXMgY2xvc2VkIHNvdXJjZSBhbmQgZGlzdHJpYnV0ZWQgYXMgYSBiaW5hcnkgaGVy
ZSBbMV0uDQo+DQo+IFRoZSBOZXV0cm9uIHNvZnR3YXJlIHN0YWNrIGFsc28gY29udGFpbnMgYSB1
c2Vyc3BhY2UgbGlicmFyeSBbMV0gYW5kDQo+IGEgTGl0ZVJUIGN1c3RvbSBkZWxlZ2F0ZSBbMl0g
dGhhdCBhbGxvdyBpbnRlZ3JhdGlvbiB3aXRoIHN0YW5kYXJkDQo+IExpdGVSVCB0b29scy4NCj4N
Cj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9ueHAtdXBzdHJlYW0vbmV1dHJvbi90cmVlL3Vwc3Ry
ZWFtDQo+IFsyXSBodHRwczovL2dpdGh1Yi5jb20vbnhwLWlteC90ZmxpdGUtbmV1dHJvbi1kZWxl
Z2F0ZQ0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBJb2FuYSBDaW9jb2ktUmFkdWxlc2N1IDxydXhhbmRy
YS5yYWR1bGVzY3VAbnhwLmNvbT4NCj4gLS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gcmViYXNl
IG9uIG5ld2VyIGRybS1taXNjLW5leHQNCj4gLSBkdCBiaW5kaW5nczogY2xvY2sgZml4ZXMgYW5k
IHJlbmFtZXMNCj4gLSB1cGRhdGUgRFRTIHRvIG1hdGNoIG5ldyBuYW1lcw0KPiAtIHJlbW92ZSB1
bm5lY2Vzc2FyeSBmaWVsZHMgZnJvbSBuZXV0cm9uX2pvYiBzdHJ1Y3R1cmUNCj4gLSBmaXggdXNl
IG9mIHVuaW5pdGlhbGl6ZWQgdmFyaWFibGUNCj4NCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjYwMjI2LW5ldXRyb24tdjEtMC00NmVjY2IzYmI1MGFAbnhwLmNv
bQ0KPg0KPiAtLS0NCj4gSW9hbmEgQ2lvY29pLVJhZHVsZXNjdSAoOSk6DQo+ICAgICAgIGRybS9n
ZW0tZG1hOiBBZGQgZmxhZyBmb3IgYmlkaXJlY3Rpb25hbCBtYXBwaW5nIG9mIG5vbi1jb2hlcmVu
dCBHRU0gRE1BIGJ1ZmZlcnMNCj4gICAgICAgYWNjZWwvbmV1dHJvbjogQWRkIGRvY3VtZW50YXRp
b24gZm9yIE5YUCBOZXV0cm9uIGFjY2VsZXJhdG9yIGRyaXZlcg0KPiAgICAgICBkdC1iaW5kaW5n
czogbnB1OiBBZGQgTlhQIE5ldXRyb24NCj4gICAgICAgYWNjZWwvbmV1dHJvbjogQWRkIGRyaXZl
ciBmb3IgTlhQIE5ldXRyb24gTlBVDQo+ICAgICAgIGFjY2VsL25ldXRyb246IEFkZCBHRU0gYnVm
ZmVyIG9iamVjdCBzdXBwb3J0DQo+ICAgICAgIGFjY2VsL25ldXRyb246IEFkZCBtYWlsYm94IHN1
cHBvcnQNCj4gICAgICAgYWNjZWwvbmV1dHJvbjogQWRkIGpvYiBzdWJtaXNzaW9uIElPQ1RMDQo+
ICAgICAgIGFjY2VsL25ldXRyb246IEFkZCBsb2dnaW5nIHN1cHBvcnQNCj4gICAgICAgYXJtNjQ6
IGR0czogaW14OTU6IEFkZCBOZXV0cm9uIG5vZGUNCj4NCj4gIERvY3VtZW50YXRpb24vYWNjZWwv
aW5kZXgucnN0ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsNCj4gIERvY3VtZW50YXRpb24v
YWNjZWwvbmV1dHJvbi9pbmRleC5yc3QgICAgICAgICAgICAgIHwgIDEyICsNCj4gIERvY3VtZW50
YXRpb24vYWNjZWwvbmV1dHJvbi9uZXV0cm9uLnJzdCAgICAgICAgICAgIHwgMTMxICsrKysrKysr
DQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvbnhwLGlteDk1LW5ldXRyb24ueWFtbCB8
ICA5NiArKysrKysNCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDEwICsNCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDk1
LmR0c2kgICAgICAgICAgIHwgIDI4ICsrDQo+ICBkcml2ZXJzL2FjY2VsL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICBkcml2ZXJzL2FjY2VsL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQ0KPiAgZHJpdmVycy9hY2NlbC9u
ZXV0cm9uL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgfCAgMTYgKw0KPiAgZHJpdmVycy9h
Y2NlbC9uZXV0cm9uL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgfCAgMTIgKw0KPiAgZHJp
dmVycy9hY2NlbC9uZXV0cm9uL25ldXRyb25fZGVidWdmcy5jICAgICAgICAgICAgfCAgMzQgKysN
Cj4gIGRyaXZlcnMvYWNjZWwvbmV1dHJvbi9uZXV0cm9uX2RlYnVnZnMuaCAgICAgICAgICAgIHwg
IDE1ICsNCj4gIGRyaXZlcnMvYWNjZWwvbmV1dHJvbi9uZXV0cm9uX2RldmljZS5jICAgICAgICAg
ICAgIHwgMjM5ICsrKysrKysrKysrKysNCj4gIGRyaXZlcnMvYWNjZWwvbmV1dHJvbi9uZXV0cm9u
X2RldmljZS5oICAgICAgICAgICAgIHwgMTU1ICsrKysrKysrKw0KPiAgZHJpdmVycy9hY2NlbC9u
ZXV0cm9uL25ldXRyb25fZHJpdmVyLmMgICAgICAgICAgICAgfCAyNjIgKysrKysrKysrKysrKysr
DQo+ICBkcml2ZXJzL2FjY2VsL25ldXRyb24vbmV1dHJvbl9kcml2ZXIuaCAgICAgICAgICAgICB8
ICAxNiArDQo+ICBkcml2ZXJzL2FjY2VsL25ldXRyb24vbmV1dHJvbl9nZW0uYyAgICAgICAgICAg
ICAgICB8IDExNiArKysrKysrDQo+ICBkcml2ZXJzL2FjY2VsL25ldXRyb24vbmV1dHJvbl9nZW0u
aCAgICAgICAgICAgICAgICB8ICAxNCArDQo+ICBkcml2ZXJzL2FjY2VsL25ldXRyb24vbmV1dHJv
bl9qb2IuYyAgICAgICAgICAgICAgICB8IDM3MiArKysrKysrKysrKysrKysrKysrKysNCj4gIGRy
aXZlcnMvYWNjZWwvbmV1dHJvbi9uZXV0cm9uX2pvYi5oICAgICAgICAgICAgICAgIHwgIDQzICsr
Kw0KPiAgZHJpdmVycy9hY2NlbC9uZXV0cm9uL25ldXRyb25fbWFpbGJveC5jICAgICAgICAgICAg
fCAgNDcgKysrDQo+ICBkcml2ZXJzL2FjY2VsL25ldXRyb24vbmV1dHJvbl9tYWlsYm94LmggICAg
ICAgICAgICB8ICA0MiArKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2RtYV9oZWxwZXIu
YyAgICAgICAgICAgICAgIHwgICA2ICstDQo+ICBpbmNsdWRlL2RybS9kcm1fZ2VtX2RtYV9oZWxw
ZXIuaCAgICAgICAgICAgICAgICAgICB8ICAgMyArDQo+ICBpbmNsdWRlL3VhcGkvZHJtL25ldXRy
b25fYWNjZWwuaCAgICAgICAgICAgICAgICAgICB8IDEzMCArKysrKysrDQo+ICAyNSBmaWxlcyBj
aGFuZ2VkLCAxODAxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IC0tLQ0KPiBiYXNl
LWNvbW1pdDogNjcxNjEwMWFlNDI5NDllOThhZDRiOWU3MWVlYmEwOGMwNTViZTQxMA0KPiBjaGFu
Z2UtaWQ6IDIwMjYwMjI2LW5ldXRyb24tYzQzNWUzOWQxNjdmDQo+DQo+IEJlc3QgcmVnYXJkcywN
Cj4gLS0NCj4gSW9hbmEgQ2lvY29pLVJhZHVsZXNjdSA8cnV4YW5kcmEucmFkdWxlc2N1QG54cC5j
b20+DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
