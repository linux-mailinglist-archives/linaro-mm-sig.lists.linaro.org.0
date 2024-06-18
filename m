Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A6B90C494
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 09:48:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86242448B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jun 2024 07:48:45 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7A4EB40431
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 07:48:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=kiGHBNdI;
	spf=pass (lists.linaro.org: domain of tfiga@chromium.org designates 209.85.208.52 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57c68682d1aso5883649a12.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 00:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718696921; x=1719301721; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sCxa0N6a/etTSTm358fxjAycnT2MNf/L62aewqr2SjQ=;
        b=kiGHBNdIRkM+MuHyEWM55Vl84Hxs0Gg50i1hNhD4m9foxAZkGR1EYTnqFedT0qjlS8
         kWJWawqtVvTdgq0YhoHO1Z+cwrOP/p/2NVSaPqI/zsWvhi+pUImcW5tY9qA3UGo11Kdg
         rnth1RejvVi0gqe6/b/qEVPwPV48ZCrxhRS0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718696921; x=1719301721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sCxa0N6a/etTSTm358fxjAycnT2MNf/L62aewqr2SjQ=;
        b=pGvKDKs4E26tmO9Cvb7tjDx+EqPYeDReggc/benZgFLBQWy5gqevfdSMGcLvlE2da2
         bNA23VsJFdcgtMEmNRFl6LZPdSGMbrtCp5MjlV1OWMGbKpFzElYe7kIMkIUKHJqrwMtz
         V4GsNFPH3/sFIce0mjzfk40VzYZIhXPs9doFxEichTgfv1f6lFdF1hG0BQ9eL5VG/NZP
         2i8cp1jeoxMel3toKOMyQUbFpR23tD9h4UMH1gkGp7TtYTmvNc7SAwjbKlrQi0x4JNhw
         aw1n+bJ9KJK2nr/ZlUZvViPnfDH0+ralQOE3BDNf/3G7txjhC+C3ZFHPr4MjlSh1hn8/
         hWOw==
X-Forwarded-Encrypted: i=1; AJvYcCVX4Ya4zY/NrHqzPOEuYnc4XC7SObUzdBS3f3XcO38klaRT+9ggrXkHYNgtFUi1DBV4ocjXuPDibvqNR2/nofs8GQA0658LhIqNPwlkHlY=
X-Gm-Message-State: AOJu0YxtjyyI5FC/0toMrSlBOGot+kLEzj+WGNmnWvYAZ9LDb+u0r7aT
	MC7CXOBhVoCmpMjSbpfG7FJFehJeF91b+NUAoPvZPccrZXkrl2qzqZ+i1RnshrZq43Qx2AT8lLC
	UwCAU
X-Google-Smtp-Source: AGHT+IF7lIZUtPwg1Sc0QDrnaZsMzPsiGjXyE9ZFOQbnJ6iR+ZBxW0xBm6mqnVEqOz0qDuvXY5Ruog==
X-Received: by 2002:a50:a6d8:0:b0:57c:6e94:a1a9 with SMTP id 4fb4d7f45d1cf-57cbd66c9d3mr6855295a12.17.1718696921186;
        Tue, 18 Jun 2024 00:48:41 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72cdfc4sm7357736a12.19.2024.06.18.00.48.40
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 00:48:40 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42172ab4b60so46018855e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jun 2024 00:48:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVSuH1LRqZLsJm+jybG3iHvIMTcMgwixkrf2cD1BrbpokjPimbPVK+ySXHw0iYLlcH4dbSgsj6u6u8y83lL04nXHZ549fG++XkziDIXlsw=
X-Received: by 2002:a17:906:ca0d:b0:a6f:fbc:b3f3 with SMTP id
 a640c23a62f3a-a6f60dc89cbmr680235166b.47.1718696899670; Tue, 18 Jun 2024
 00:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240618073004.3420436-1-tao.jiang_2@nxp.com>
In-Reply-To: <20240618073004.3420436-1-tao.jiang_2@nxp.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 18 Jun 2024 16:47:45 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
Message-ID: <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
To: TaoJiang <tao.jiang_2@nxp.com>
X-Rspamd-Queue-Id: 7A4EB40431
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,xs4all.nl,ndufresne.ca,pengutronix.de,gmail.com,nxp.com,oss.nxp.com,lists.linux.dev,vger.kernel.org,samsung.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.208.52:from,209.85.128.46:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 23566JCLHQGQUXWHXN4YOQVWBDATVNWY
X-Message-ID-Hash: 23566JCLHQGQUXWHXN4YOQVWBDATVNWY
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca, shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, xiahong.bao@nxp.com, eagle.zhou@nxp.com, ming.qian@oss.nxp.com, imx@lists.linux.dev, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Ming Qian <ming.qian@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] media: videobuf2: sync caches for dmabuf memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/23566JCLHQGQUXWHXN4YOQVWBDATVNWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVGFvSmlhbmcsDQoNCk9uIFR1ZSwgSnVuIDE4LCAyMDI0IGF0IDQ6MzDigK9QTSBUYW9KaWFu
ZyA8dGFvLmppYW5nXzJAbnhwLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IE1pbmcgUWlhbiA8bWlu
Zy5xaWFuQG54cC5jb20+DQo+DQo+IFdoZW4gdGhlIG1lbW9yeSB0eXBlIGlzIFZCMl9NRU1PUllf
RE1BQlVGLCB0aGUgdjRsMiBkZXZpY2UgY2FuJ3Qga25vdw0KPiB3aGV0aGVyIHRoZSBkbWEgYnVm
ZmVyIGlzIGNvaGVyZW50IG9yIHN5bmNocm9uaXplZC4NCj4NCj4gVGhlIHZpZGVvYnVmMi1jb3Jl
IHdpbGwgc2tpcCBjYWNoZSBzeW5jcyBhcyBpdCB0aGluayB0aGUgRE1BIGV4cG9ydGVyDQo+IHNo
b3VsZCB0YWtlIGNhcmUgb2YgY2FjaGUgc3luY3MNCj4NCj4gQnV0IGluIGZhY3QgaXQncyBsaWtl
bHkgdGhhdCB0aGUgY2xpZW50IGRvZXNuJ3QNCj4gc3luY2hyb25pemUgdGhlIGRtYSBidWYgYmVm
b3JlIHFidWYoKSBvciBhZnRlciBkcWJ1ZigpLiBhbmQgaXQncw0KPiBkaWZmaWN1bHQgdG8gZmlu
ZCB0aGlzIHR5cGUgb2YgZXJyb3IgZGlyZWN0bHkuDQo+DQo+IEkgdGhpbmsgaXQncyBoZWxwZnVs
IHRoYXQgdmlkZW9idWYyLWNvcmUgY2FuIGNhbGwNCj4gZG1hX2J1Zl9lbmRfY3B1X2FjY2Vzcygp
IGFuZCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKSB0byBoYW5kbGUgdGhlDQo+IGNhY2hlIHN5
bmNzLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaW5nIFFpYW4gPG1pbmcucWlhbkBueHAuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBUYW9KaWFuZyA8dGFvLmppYW5nXzJAbnhwLmNvbT4NCj4gLS0tDQo+
ICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jICAgfCAyMiArKysr
KysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQ0KPg0K
DQpTb3JyeSwgdGhhdCBwYXRjaCBpcyBpbmNvcnJlY3QuIEkgYmVsaWV2ZSB5b3UncmUgbWlzdW5k
ZXJzdGFuZGluZyB0aGUNCndheSBETUEtYnVmIGJ1ZmZlcnMgc2hvdWxkIGJlIG1hbmFnZWQgaW4g
dGhlIHVzZXJzcGFjZS4gSXQncyB0aGUNCnVzZXJzcGFjZSByZXNwb25zaWJpbGl0eSB0byBjYWxs
IHRoZSBETUFfQlVGX0lPQ1RMX1NZTkMgaW9jdGwgWzFdIHRvDQpzaWduYWwgc3RhcnQgYW5kIGVu
ZCBvZiBDUFUgYWNjZXNzIHRvIHRoZSBrZXJuZWwgYW5kIGltcGx5IG5lY2Vzc2FyeQ0KY2FjaGUg
c3luY2hyb25pemF0aW9uLg0KDQpbMV0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZHJpdmVyLWFw
aS9kbWEtYnVmLmh0bWwjZG1hLWJ1ZmZlci1pb2N0bHMNCg0KU28sIHJlYWxseSBzb3JyeSwgYnV0
IGl0J3MgYSBOQUsuDQoNCkJlc3QgcmVnYXJkcywNClRvbWFzeg0KDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYyBiL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jDQo+IGluZGV4IDM1OGYxZmU0
Mjk3NS4uNDczNGZmOWNmM2NlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92
aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYw0KPiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92
aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYw0KPiBAQCAtMzQwLDYgKzM0MCwxNyBAQCBzdGF0aWMg
dm9pZCBfX3ZiMl9idWZfbWVtX3ByZXBhcmUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQ0KPiAgICAg
ICAgIHZiLT5zeW5jZWQgPSAxOw0KPiAgICAgICAgIGZvciAocGxhbmUgPSAwOyBwbGFuZSA8IHZi
LT5udW1fcGxhbmVzOyArK3BsYW5lKQ0KPiAgICAgICAgICAgICAgICAgY2FsbF92b2lkX21lbW9w
KHZiLCBwcmVwYXJlLCB2Yi0+cGxhbmVzW3BsYW5lXS5tZW1fcHJpdik7DQo+ICsNCj4gKyAgICAg
ICBpZiAodmItPm1lbW9yeSAhPSBWQjJfTUVNT1JZX0RNQUJVRikNCj4gKyAgICAgICAgICAgICAg
IHJldHVybjsNCj4gKyAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5l
czsgKytwbGFuZSkgew0KPiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRidWYgPSB2
Yi0+cGxhbmVzW3BsYW5lXS5kYnVmOw0KPiArDQo+ICsgICAgICAgICAgICAgICBpZiAoIWRidWYp
DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiArDQo+ICsgICAgICAgICAg
ICAgICBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKGRidWYsIHZiLT52YjJfcXVldWUtPmRtYV9kaXIp
Ow0KPiArICAgICAgIH0NCj4gIH0NCj4NCj4gIC8qDQo+IEBAIC0zNTYsNiArMzY3LDE3IEBAIHN0
YXRpYyB2b2lkIF9fdmIyX2J1Zl9tZW1fZmluaXNoKHN0cnVjdCB2YjJfYnVmZmVyICp2YikNCj4g
ICAgICAgICB2Yi0+c3luY2VkID0gMDsNCj4gICAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUg
PCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkNCj4gICAgICAgICAgICAgICAgIGNhbGxfdm9pZF9t
ZW1vcCh2YiwgZmluaXNoLCB2Yi0+cGxhbmVzW3BsYW5lXS5tZW1fcHJpdik7DQo+ICsNCj4gKyAg
ICAgICBpZiAodmItPm1lbW9yeSAhPSBWQjJfTUVNT1JZX0RNQUJVRikNCj4gKyAgICAgICAgICAg
ICAgIHJldHVybjsNCj4gKyAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3Bs
YW5lczsgKytwbGFuZSkgew0KPiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRidWYg
PSB2Yi0+cGxhbmVzW3BsYW5lXS5kYnVmOw0KPiArDQo+ICsgICAgICAgICAgICAgICBpZiAoIWRi
dWYpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiArDQo+ICsgICAgICAg
ICAgICAgICBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoZGJ1ZiwgdmItPnZiMl9xdWV1ZS0+ZG1h
X2Rpcik7DQo+ICsgICAgICAgfQ0KPiAgfQ0KPg0KPiAgLyoNCj4gLS0NCj4gMi40My4wLXJjMQ0K
Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
