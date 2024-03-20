Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 436FC880D29
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 09:37:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C9E740449
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 08:37:17 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6D49A40449
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Mar 2024 08:37:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ZbnPAcVZ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33ed4d8e9edso2911038f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Mar 2024 01:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710923833; x=1711528633; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O0h9ShhKwKo94HpkMlCl4q0fJQvniE/fEbxFxlkuix8=;
        b=ZbnPAcVZM6v3dJQ4um5LvWZmcaMgVupS5TwPe8Q1nqgjuUAjwy657XHrrUhyHc4uUo
         H1wz9F7ds4LO4lt8H0BvzDTE0an4V2k8jrvUq669G/Aoo/HGBQrP4H3NGQJT1M5IQQNV
         XIfemI+ByH1LGltfddp/UP6OMNRipZ0Bag6Qvm7f+pDJ0KT+Ag2c7QVnHn6pa0sY/658
         fVJIlIIrMGSMFVI622fjf6XX8b0jbeJey0aAnD5AgP0rZQoJALc9eNGBjBp36q5uNAGg
         CtQ126cdRklgP7fSvrjt31TESFDbrUxl0O21DD1ZE0aP7L3En/T6pWhXVOWACEvVx6Bi
         ftZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710923833; x=1711528633;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O0h9ShhKwKo94HpkMlCl4q0fJQvniE/fEbxFxlkuix8=;
        b=LAw6JzcA3x6+GHYE0XMFePaMHnRMtuS6SQJOKk3v3uGAyUQMm3QL6bjG2oBOCDfgDo
         tmCgqlmCYpLuQCy9fU7vkLOHPoOna+SnpEtrWptG69tbSl0nNYiXpTKJsavr/WFeRFJR
         oL/EKcD34zSy3pymheXswPTHadDY3FKw4k6QSSztPDORQsozk9hDSNBT33bfL6xVqUcc
         hXnVt38KwOpvKDM/RMsf1DdjdlCMsIEFK0FKSH+3NLeB87eV4G2s+utMp5rxHpa3MTtJ
         OgGHXB2B72F3S3iZ+pGMdpK+lYZb3jWMV52PRT5d2ECU8v3zhVbMp5RwIaBQy82b/eEz
         MucQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg4Uv4yziB+Y4+JKXHpT/adyJ6xJTfCfhzMZk98VmpCFzQe8Jrdg5PlVbkuh7QYh0jeb2ceviLpEBMxXS0SjNfCB3zdTaOKVi9KOYV81Y=
X-Gm-Message-State: AOJu0YyjfB6VHFb1Qdh4rlxdkHac7SurAxm8uxaLS7+J9+5B2QpVS4D6
	q7cKtf735yUDxe/HgU1nuWYOuhrBu3c5u+CvUHs7/Qrd3jwflE64
X-Google-Smtp-Source: AGHT+IGa58nGCJKekIoS3MzHD3SUCd1Vz9UMMJhXb0mgycB8I8fgzPR69/0+gTJ7cpDNluNemiyHoA==
X-Received: by 2002:a5d:6450:0:b0:33d:a011:ae42 with SMTP id d16-20020a5d6450000000b0033da011ae42mr11461520wrw.38.1710923833161;
        Wed, 20 Mar 2024 01:37:13 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id dd15-20020a0560001e8f00b0033ce727e728sm14168784wrb.94.2024.03.20.01.37.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 01:37:12 -0700 (PDT)
Message-ID: <57c49fd1-a55f-47d5-a057-54d360c77906@gmail.com>
Date: Wed, 20 Mar 2024 09:37:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Pavel Sakharov <p.sakharov@ispras.ru>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20240319231527.1821372-1-p.sakharov@ispras.ru>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20240319231527.1821372-1-p.sakharov@ispras.ru>
X-Rspamd-Queue-Id: 6D49A40449
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.42:from];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7LJSGNDSWOJOTLHUZW2I7TECNJMGI33I
X-Message-ID-Hash: 7LJSGNDSWOJOTLHUZW2I7TECNJMGI33I
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Fedor Pchelkin <pchelkin@ispras.ru>, lvc-project@linuxtesting.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix NULL pointer dereference in sanitycheck()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7LJSGNDSWOJOTLHUZW2I7TECNJMGI33I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDMuMjQgdW0gMDA6MTUgc2NocmllYiBQYXZlbCBTYWtoYXJvdjoNCj4gSWYgZHVlIHRv
IGEgbWVtb3J5IGFsbG9jYXRpb24gZmFpbHVyZSBtb2NrX2NoYWluKCkgcmV0dXJucyBOVUxMLCBp
dCBpcw0KPiBwYXNzZWQgdG8gZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoKSByZXN1bHRp
bmcgaW4gTlVMTCBwb2ludGVyDQo+IGRlcmVmZXJlbmNlIHRoZXJlLg0KPg0KPiBDYWxsIGRtYV9m
ZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkgb25seSBpZiBtb2NrX2NoYWluKCkgc3VjY2VlZHMu
DQo+DQo+IEZvdW5kIGJ5IExpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIgKGxpbnV4dGVzdGluZy5v
cmcpIHdpdGggU1ZBQ0UuDQo+DQo+IEZpeGVzOiBkNjJjNDNhOTUzY2UgKCJkbWEtYnVmOiBFbmFi
bGUgc2lnbmFsaW5nIG9uIGZlbmNlIGZvciBzZWxmdGVzdHMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBQ
YXZlbCBTYWtoYXJvdiA8cC5zYWtoYXJvdkBpc3ByYXMucnU+DQoNClJldmlld2VkLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCkdvaW5nIHRvIHB1c2gg
aXQgdG8gZHJtLW1pc2MtZml4ZXMgaW4gYSBtaW51dGUuDQoNClRoYW5rcywNCkNocmlzdGlhbi4N
Cg0KPg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgfCA2
ICsrKy0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWlu
LmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMNCj4gaW5kZXggOWMyYTBj
MDgyYTc2Li5lZDRiMzIzODg2ZTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1k
bWEtZmVuY2UtY2hhaW4uYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNo
YWluLmMNCj4gQEAgLTg0LDExICs4NCwxMSBAQCBzdGF0aWMgaW50IHNhbml0eWNoZWNrKHZvaWQg
KmFyZykNCj4gICAJCXJldHVybiAtRU5PTUVNOw0KPg0KPiAgIAljaGFpbiA9IG1vY2tfY2hhaW4o
TlVMTCwgZiwgMSk7DQo+IC0JaWYgKCFjaGFpbikNCj4gKwlpZiAoY2hhaW4pDQo+ICsJCWRtYV9m
ZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKGNoYWluKTsNCj4gKwllbHNlDQo+ICAgCQllcnIgPSAt
RU5PTUVNOw0KPg0KPiAtCWRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKGNoYWluKTsNCj4g
LQ0KPiAgIAlkbWFfZmVuY2Vfc2lnbmFsKGYpOw0KPiAgIAlkbWFfZmVuY2VfcHV0KGYpOw0KPg0K
PiAtLQ0KPiAyLjQ0LjANCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
