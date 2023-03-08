Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4FC6B0DBC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:55:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41A313F0B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:55:12 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 2443D3F0BB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:53:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=cKLTDwB0;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id bo22so16900784pjb.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0O2Ww3Cm9WKvcOgcLWcXNiHRtUzq1XNv4cTGeNjGUs=;
        b=cKLTDwB0Xy7r9Ppx1Na+PUt8wGSmaLtS7mPtyVg1TcoZtWLLqiD42GBRsgcTokYjk/
         +o52Z76Vk2/EJPDg6TOZPJ2wr0ebyu/jrWhY2t7jcssnmD56pgTiiS26e/5bAnsbCDkS
         dam2mgWt8Cn5zCaBaM6123GRms9tvWowVnSpqMr5pdj7aDaJkySCCEw2heRKqV8ZHn8n
         fsz0o9F0wOklPSEPkjTOc91tffQHuDWyaycUGr/IKUCWRhozjDBQybV/CKv8NcAaH6rI
         cov6SDsFDN4JEMZujhnJis1V8E65zeWDjoazY2pw+iN3gBWH1T21Ur6IfpIZWNu7NH1b
         8xaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0O2Ww3Cm9WKvcOgcLWcXNiHRtUzq1XNv4cTGeNjGUs=;
        b=PVNO4Lw0++AZw+aF7id5o4Cvsbv4qWP7polIgh35sS5rkjMMvxhPPWX+wkDQUwUVDG
         3b2SndRI+5FIsXsMsNosdBMWgWMYE56SJ0TfFR0TIr9KOXfyw2NQHldnHR05R7ai34qq
         ES34YHLfPYXDZt2UoW1MvSXbxH7sBb9pvQfkksgrpO2SUkPgkBbZg1DNEpWHRrDsmXJ9
         DKK/syAZrHAvfincEaPSXWKI10xDMM3x/r9AKTK3TqTPrfCNeixz/ArByniHZH6gfaew
         S4gP6Qfek4M4wI/Hlq5cdMRdbSpjJHzyUom60rgCEviY8VuGFbgu6uMZUlqeXETRUCqM
         colQ==
X-Gm-Message-State: AO0yUKVaFdDqmofIeTzI1MM7+0hWFOCm8MztmohI1J9IzggeetK5SM1L
	FvIdsCHc8IC0JfztqBxdo1M=
X-Google-Smtp-Source: AK7set96zWJ64oh1bpggyeyTLr/2ieL59AK11mtNd342xYu679A/tHaLq9ev58BsNkm68KVtEeIcOg==
X-Received: by 2002:a17:902:e80d:b0:19c:cb64:dacc with SMTP id u13-20020a170902e80d00b0019ccb64daccmr23386540plg.61.1678290817169;
        Wed, 08 Mar 2023 07:53:37 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id w14-20020a170902e88e00b0019e88d9bed3sm9969603plg.210.2023.03.08.07.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:53:36 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:52:55 -0800
Message-Id: <20230308155322.344664-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2443D3F0BB
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,linaro.org,vger.kernel.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: TNGY2B7F26RY2INSE6WTOKBA5ZDFIFAW
X-Message-ID-Hash: TNGY2B7F26RY2INSE6WTOKBA5ZDFIFAW
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 04/15] dma-buf/dma-resv: Add a way to set fence deadline
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TNGY2B7F26RY2INSE6WTOKBA5ZDFIFAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgYSB3YXkgdG8g
c2V0IGEgZGVhZGxpbmUgb24gcmVtYWluaW5nIHJlc3YgZmVuY2VzIGFjY29yZGluZyB0byB0aGUN
CnJlcXVlc3RlZCB1c2FnZS4NCg0KU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtA
Y2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMjIgKysr
KysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCAgIHwgIDIgKysN
CiAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4
IDFjNzZhZWQ4ZTI2Mi4uMmE1OTRiNzU0YWYxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNjg0LDYg
KzY4NCwyOCBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiB9DQogRVhQT1JUX1NZTUJPTF9HUEwoZG1h
X3Jlc3Zfd2FpdF90aW1lb3V0KTsNCiANCisvKioNCisgKiBkbWFfcmVzdl9zZXRfZGVhZGxpbmUg
LSBTZXQgYSBkZWFkbGluZSBvbiByZXNlcnZhdGlvbidzIG9iamVjdHMgZmVuY2VzDQorICogQG9i
ajogdGhlIHJlc2VydmF0aW9uIG9iamVjdA0KKyAqIEB1c2FnZTogY29udHJvbHMgd2hpY2ggZmVu
Y2VzIHRvIGluY2x1ZGUsIHNlZSBlbnVtIGRtYV9yZXN2X3VzYWdlLg0KKyAqIEBkZWFkbGluZTog
dGhlIHJlcXVlc3RlZCBkZWFkbGluZSAoTU9OT1RPTklDKQ0KKyAqDQorICogTWF5IGJlIGNhbGxl
ZCB3aXRob3V0IGhvbGRpbmcgdGhlIGRtYV9yZXN2IGxvY2suICBTZXRzIEBkZWFkbGluZSBvbg0K
KyAqIGFsbCBmZW5jZXMgZmlsdGVyZWQgYnkgQHVzYWdlLg0KKyAqLw0KK3ZvaWQgZG1hX3Jlc3Zf
c2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVz
YWdlLA0KKwkJCSAgIGt0aW1lX3QgZGVhZGxpbmUpDQorew0KKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciBjdXJzb3I7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KKw0KKwlkbWFfcmVzdl9pdGVy
X2JlZ2luKCZjdXJzb3IsIG9iaiwgdXNhZ2UpOw0KKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgew0KKwkJZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmZW5j
ZSwgZGVhZGxpbmUpOw0KKwl9DQorCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KK30NCitF
WFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9zZXRfZGVhZGxpbmUpOw0KIA0KIC8qKg0KICAqIGRt
YV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRpb24gb2JqZWN0J3MgZmVu
Y2VzIGhhdmUgYmVlbg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KaW5kZXggMDYzNzY1OWE3MDJjLi44ZDBlMzRkYWQ0NDYg
MTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCisrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaA0KQEAgLTQ3OSw2ICs0NzksOCBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X3Npbmds
ZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiBp
bnQgZG1hX3Jlc3ZfY29weV9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpkc3QsIHN0cnVjdCBkbWFf
cmVzdiAqc3JjKTsNCiBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiAJCQkgICBib29sIGludHIsIHVuc2ln
bmVkIGxvbmcgdGltZW91dCk7DQordm9pZCBkbWFfcmVzdl9zZXRfZGVhZGxpbmUoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQorCQkJICAga3RpbWVfdCBk
ZWFkbGluZSk7DQogYm9vbCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkKHN0cnVjdCBkbWFfcmVzdiAq
b2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVzYWdlKTsNCiB2b2lkIGRtYV9yZXN2X2Rlc2NyaWJl
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSk7DQogDQotLSANCjIu
MzkuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
