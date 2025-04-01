Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 434ACA78363
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 22:41:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60D1C44739
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 20:41:15 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by lists.linaro.org (Postfix) with ESMTPS id E94E73F66D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 20:41:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gW6xQZXh;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.49 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-85e73562577so511908539f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 13:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743540061; x=1744144861; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siRhwdkGqZcq/rdLOAyWJygNm07mlGX8YXe+LkcnPjg=;
        b=gW6xQZXhXRrB0jUcPIxfEpGiJRzizgsv8r6mxA+cfBNdqkzCN8g5ZcQxu05aBGi6u8
         bCn7Fgdz7XnEt/ow6YRg5wqaFLJY1J+Ai5rhlv9uTl49ORUFuQnv6GWmQVnFYk8wvd8B
         zm6pINaS0TQzE54G3ARuhm7m1msGJSpKzVlmXw8FO/VL+C1PDRJUelAMqwXFBVU+tzVW
         ze8JaCm4dCgK5ofR2l2FEnUe/V2mMqEZ2gci2yZQOOxj6/ub997vrVctgQoeIP/1C4S6
         hgT2ZxPtj8mcAygk3co82+7tBf3tgz+KDWaAGIptxEW6hf64/f+ZNl2NZ1Jim6lA71ES
         8QcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743540061; x=1744144861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siRhwdkGqZcq/rdLOAyWJygNm07mlGX8YXe+LkcnPjg=;
        b=br6YcHk4EIJE3l49tue/gITlqdToj4VYTXgNdXaAYtL5c8pJ+AzYqiYHDXbuKVtg2W
         ZUeDyGOl8YvkhkSJFL9Eu21ep00avhTcOteCbDVk3Ov4ccBtbJy8JL8ItDMXJDrOMJYK
         HNsjURGURP/nNTNXWKJMuF2sWsO02hBVJAO8azbtJttkqzo1g3lj5YdN425W0z+S1qb2
         zF6hvJ+keL8hWuufpgjKGuwG5nfKUOcZUoW1ySmLRRAcOI9Ev0dgrUHJWUKy5afjWJMv
         mjwe6OdaxxGD4ljfetjCZBuIMjxrCtM/LA0ej683Kwrc3dHVrCEzIX1r+yKTO1gCP+j3
         9ndQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsntPK3mghRpYGZO1rzDN8kkG9wSs7AX6cxbSVHaK3MFsjMnC9SXkHGYeMjER9OhAA3m68sSdGc0NNp6nq@lists.linaro.org
X-Gm-Message-State: AOJu0Yw8cqOij9l4wFAlFpYKtKGsONwF3KZpagxDoRY9OyHBANO9odZA
	UhtseRzHY1v2eQHqsxntgDqXRvN6IteUqt5zZUOpeHTfh1zxjQTMnG3uvNbUzXNkayGCnZ/b0p8
	1EL77iDj1bqPBLVxlBoWPfF6ttbc=
X-Gm-Gg: ASbGncvMk2bhjBUG9SuF4DDxR91PIM/P5IHcxHgX1sigtOwxbfjPt12OUnBTzyltHKJ
	NB5wgezvEymqCy4U3msY9Fg4TN/mrDMSOCS6f7FN8h091eEEcEcFWJDQui2BOPc5cOgA+iYkj4u
	5aZ6yRSXUXFCUvxRfsIZqg7hlwIQVLL23FVelPfi3ujCYOSmFhbxpZB9nOs7yE
X-Google-Smtp-Source: AGHT+IFLlhtX4Th4iaWF6gmgGrgmSI2sNYPTK5C3v32iqwrOki9gMq65N8YIiPUx2AS0QMSgiiHdclEstrrecxsEUTg=
X-Received: by 2002:a05:6e02:330e:b0:3d4:2ea4:6b8a with SMTP id
 e9e14a558f8ab-3d6ca680434mr58428335ab.22.1743540061217; Tue, 01 Apr 2025
 13:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250401155758.48855-1-robdclark@gmail.com>
In-Reply-To: <20250401155758.48855-1-robdclark@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 1 Apr 2025 13:40:49 -0700
X-Gm-Features: AQ5f1Jok8YMtfimcNM4pgU6iFDD8sQiU6mJe95HIx3itVvK4c_kQGvT5W1tTXT4
Message-ID: <CAF6AEGsKbjq_q7ezQTn5vyAF1cjXahgbv84uYK35BJH1KBXSpw@mail.gmail.com>
To: dri-devel@lists.freedesktop.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E94E73F66D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.166.49:from];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 64EK6AYGYTG5HQTHMYKHKOM4ESWQTFUJ
X-Message-ID-Hash: 64EK6AYGYTG5HQTHMYKHKOM4ESWQTFUJ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/64EK6AYGYTG5HQTHMYKHKOM4ESWQTFUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMSwgMjAyNSBhdCA4OjU44oCvQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0u
b3JnPg0KPg0KPiBBZGQgc3VwcG9ydCBmb3IgZXhwb3J0aW5nIGEgZG1hX2ZlbmNlIGZkIGZvciBh
IHNwZWNpZmljIHBvaW50IG9uIGENCj4gdGltZWxpbmUuICBUaGlzIGlzIG5lZWRlZCBmb3IgdnRl
c3QvdnBpcGVbMV1bMl0gdG8gaW1wbGVtZW50IHRpbWVsaW5lDQo+IHN5bmNvYmogc3VwcG9ydCwg
YXMgaXQgbmVlZHMgYSB3YXkgdG8gdHVybiBhIHBvaW50IG9uIGEgdGltZWxpbmUgYmFjaw0KPiBp
bnRvIGEgZG1hX2ZlbmNlIGZkLiAgSXQgYWxzbyBjbG9zZXMgYW4gb2RkIG9taXNzaW9uIGZyb20g
dGhlIHN5bmNvYmoNCj4gVUFQSS4NCj4NCj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9tZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0cy8zMzQzMw0KPiBbMl0gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL3ZpcmdsL3ZpcmdscmVuZGVyZXIvLS9tZXJnZV9yZXF1ZXN0cy84
MDUNCj4NCj4gdjI6IEFkZCBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUN
Cj4gdjM6IEFkZCB1bnN0YWdlZCB1YWJpIGhlYWRlciBodW5rDQo+IHY0OiBBbHNvIGhhbmRsZSBJ
TVBPUlRfU1lOQ19GSUxFIGNhc2UNCj4gdjU6IEFkZHJlc3MgY29tbWVudHMgZnJvbSBEbWl0cnkN
Cj4gdjY6IGNoZWNrcGF0Y2gucGwgbml0cw0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVu
a28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9kcm1fc3luY29iai5jIHwgNDcgKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0NCj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtLmggICAgICAgIHwgIDQgKysrDQo+ICAyIGZpbGVz
IGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3N5bmNvYmouYw0KPiBpbmRleCA0ZjJhYjhhN2I1MGYuLjYzNmNkODNjYTI5ZSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9zeW5jb2JqLmMNCj4gQEAgLTc0MSw3ICs3NDEsNyBAQCBzdGF0aWMgaW50IGRybV9z
eW5jb2JqX2ZkX3RvX2hhbmRsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4gIH0N
Cj4NCj4gIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZShzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGludCBmZCwgaW50IGhhbmRsZSkNCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBmZCwgaW50IGhhbmRsZSwgdTY0IHBv
aW50KQ0KPiAgew0KPiAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gc3luY19maWxl
X2dldF9mZW5jZShmZCk7DQo+ICAgICAgICAgc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOw0K
PiBAQCAtNzU1LDE0ICs3NTUsMjQgQEAgc3RhdGljIGludCBkcm1fc3luY29ial9pbXBvcnRfc3lu
Y19maWxlX2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9FTlQ7DQo+ICAgICAgICAgfQ0KPg0KPiAtICAgICAgIGRybV9zeW5j
b2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOw0KPiArICAgICAgIGlmIChwb2ludCkg
ew0KPiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4gPSBkbWFf
ZmVuY2VfY2hhaW5fYWxsb2MoKTsNCj4gKw0KPiArICAgICAgICAgICAgICAgaWYgKCFjaGFpbikN
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKyAgICAg
ICAgICAgICAgIGRybV9zeW5jb2JqX2FkZF9wb2ludChzeW5jb2JqLCBjaGFpbiwgZmVuY2UsIHBv
aW50KTsNCj4gKyAgICAgICB9IGVsc2Ugew0KPiArICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpf
cmVwbGFjZV9mZW5jZShzeW5jb2JqLCBmZW5jZSk7DQo+ICsgICAgICAgfQ0KPiArDQo+ICAgICAg
ICAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+ICAgICAgICAgZHJtX3N5bmNvYmpfcHV0KHN5bmNv
YmopOw0KPiAgICAgICAgIHJldHVybiAwOw0KPiAgfQ0KPg0KPiAgc3RhdGljIGludCBkcm1fc3lu
Y29ial9leHBvcnRfc3luY19maWxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGhhbmRsZSwgaW50ICpw
X2ZkKQ0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGhhbmRs
ZSwgdTY0IHBvaW50LCBpbnQgKnBfZmQpDQo+ICB7DQo+ICAgICAgICAgaW50IHJldDsNCj4gICAg
ICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4gQEAgLTc3Miw3ICs3ODIsNyBAQCBzdGF0
aWMgaW50IGRybV9zeW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxl
X3ByaXZhdGUsDQo+ICAgICAgICAgaWYgKGZkIDwgMCkNCj4gICAgICAgICAgICAgICAgIHJldHVy
biBmZDsNCj4NCj4gLSAgICAgICByZXQgPSBkcm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJp
dmF0ZSwgaGFuZGxlLCAwLCAwLCAmZmVuY2UpOw0KPiArICAgICAgIHJldCA9IGRybV9zeW5jb2Jq
X2ZpbmRfZmVuY2UoZmlsZV9wcml2YXRlLCBoYW5kbGUsIHBvaW50LCAwLCAmZmVuY2UpOw0KPiAg
ICAgICAgIGlmIChyZXQpDQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9wdXRfZmQ7DQo+DQo+
IEBAIC04NjksNiArODc5LDkgQEAgZHJtX3N5bmNvYmpfaGFuZGxlX3RvX2ZkX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUpDQo+ICB7DQo+ICAgICAg
ICAgc3RydWN0IGRybV9zeW5jb2JqX2hhbmRsZSAqYXJncyA9IGRhdGE7DQo+ICsgICAgICAgdW5z
aWduZWQgaW50IHZhbGlkX2ZsYWdzID0gRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJ
TUVMSU5FIHwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fU1lOQ09C
Sl9IQU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRTsNCj4gKyAgICAgICB1NjQgcG9p
bnQgPSAwOw0KPg0KPiAgICAgICAgIGlmICghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYsIERS
SVZFUl9TWU5DT0JKKSkNCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU9QTk9UU1VQUDsNCj4g
QEAgLTg3NiwxMyArODg5LDE4IEBAIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZF9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiAgICAgICAgIGlmIChhcmdzLT5wYWQp
DQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4NCj4gLSAgICAgICBpZiAoYXJn
cy0+ZmxhZ3MgIT0gMCAmJg0KPiAtICAgICAgICAgICBhcmdzLT5mbGFncyAhPSBEUk1fU1lOQ09C
Sl9IQU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSkNCj4gKyAgICAgICBpZiAoYXJn
cy0+ZmxhZ3MgJiB+dmFsaWRfZmxhZ3MpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsNCj4NCj4gKyAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9IQU5ETEVfVE9f
RkRfRkxBR1NfVElNRUxJTkUpDQo+ICsgICAgICAgICAgICAgICBwb2ludCA9IGFyZ3MtPnBvaW50
Ow0KPiArDQo+ICAgICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfSEFORExFX1RP
X0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gZHJt
X3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShmaWxlX3ByaXZhdGUsIGFyZ3MtPmhhbmRsZSwNCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdz
LT5mZCk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwb2ludCwgJmFyZ3MtPmZkKTsNCj4gKw0KPiArICAgICAgIGlmIChhcmdzLT5wb2ludCkN
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0KPiAgICAgICAgIHJldHVybiBk
cm1fc3luY29ial9oYW5kbGVfdG9fZmQoZmlsZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmYXJncy0+ZmQpOw0KPiBAQCAt
ODkzLDYgKzkxMSw5IEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlKQ0KPiAgew0KPiAgICAgICAgIHN0
cnVjdCBkcm1fc3luY29ial9oYW5kbGUgKmFyZ3MgPSBkYXRhOw0KPiArICAgICAgIHVuc2lnbmVk
IGludCB2YWxpZF9mbGFncyA9IERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19USU1FTElO
RSB8DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX1NZTkNPQkpfRkRf
VE9fSEFORExFX0ZMQUdTX0lNUE9SVF9TWU5DX0ZJTEU7DQo+ICsgICAgICAgdTY0IHBvaW50ID0g
MDsNCj4NCj4gICAgICAgICBpZiAoIWRybV9jb3JlX2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklWRVJf
U1lOQ09CSikpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7DQoNCm9oLCBJ
IHN1cHBvc2UgSSBzaG91bGQgYWRkIGEgY2hlY2sgZm9yIERSSVZFUl9TWU5DT0JKX1RJTUVMSU5F
PyAgSSdsbA0Kc2VuZCBhIHY3IGEgYml0IGxhdGVyDQoNCkJSLA0KLVINCg0KPiBAQCAtOTAwLDE0
ICs5MjEsMjAgQEAgZHJtX3N5bmNvYmpfZmRfdG9faGFuZGxlX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ICAgICAgICAgaWYgKGFyZ3MtPnBhZCkNCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0KPiAtICAgICAgIGlmIChhcmdzLT5mbGFncyAh
PSAwICYmDQo+IC0gICAgICAgICAgIGFyZ3MtPmZsYWdzICE9IERSTV9TWU5DT0JKX0ZEX1RPX0hB
TkRMRV9GTEFHU19JTVBPUlRfU1lOQ19GSUxFKQ0KPiArICAgICAgIGlmIChhcmdzLT5mbGFncyAm
IH52YWxpZF9mbGFncykNCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0KPiAr
ICAgICAgIGlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19U
SU1FTElORSkNCj4gKyAgICAgICAgICAgICAgIHBvaW50ID0gYXJncy0+cG9pbnQ7DQo+ICsNCj4g
ICAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1Nf
SU1QT1JUX1NZTkNfRklMRSkNCj4gICAgICAgICAgICAgICAgIHJldHVybiBkcm1fc3luY29ial9p
bXBvcnRfc3luY19maWxlX2ZlbmNlKGZpbGVfcHJpdmF0ZSwNCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZ3MtPmZkLA0KPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXJn
cy0+aGFuZGxlKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGFyZ3MtPmhhbmRsZSwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvaW50KTsNCj4gKw0KPiArICAgICAg
IGlmIChhcmdzLT5wb2ludCkNCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPg0K
PiAgICAgICAgIHJldHVybiBkcm1fc3luY29ial9mZF90b19oYW5kbGUoZmlsZV9wcml2YXRlLCBh
cmdzLT5mZCwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdz
LT5oYW5kbGUpOw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm0uaCBiL2luY2x1
ZGUvdWFwaS9kcm0vZHJtLmgNCj4gaW5kZXggN2ZiYTM3Yjk0NDAxLi5lNjNhNzFkM2M2MDcgMTAw
NjQ0DQo+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmgNCj4gKysrIGIvaW5jbHVkZS91YXBp
L2RybS9kcm0uaA0KPiBAQCAtOTA1LDEzICs5MDUsMTcgQEAgc3RydWN0IGRybV9zeW5jb2JqX2Rl
c3Ryb3kgew0KPiAgfTsNCj4NCj4gICNkZWZpbmUgRFJNX1NZTkNPQkpfRkRfVE9fSEFORExFX0ZM
QUdTX0lNUE9SVF9TWU5DX0ZJTEUgKDEgPDwgMCkNCj4gKyNkZWZpbmUgRFJNX1NZTkNPQkpfRkRf
VE9fSEFORExFX0ZMQUdTX1RJTUVMSU5FICAgICAgICAgKDEgPDwgMSkNCj4gICNkZWZpbmUgRFJN
X1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUgKDEgPDwgMCkNCj4g
KyNkZWZpbmUgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJTUVMSU5FICAgICAgICAg
KDEgPDwgMSkNCj4gIHN0cnVjdCBkcm1fc3luY29ial9oYW5kbGUgew0KPiAgICAgICAgIF9fdTMy
IGhhbmRsZTsNCj4gICAgICAgICBfX3UzMiBmbGFnczsNCj4NCj4gICAgICAgICBfX3MzMiBmZDsN
Cj4gICAgICAgICBfX3UzMiBwYWQ7DQo+ICsNCj4gKyAgICAgICBfX3U2NCBwb2ludDsNCj4gIH07
DQo+DQo+ICBzdHJ1Y3QgZHJtX3N5bmNvYmpfdHJhbnNmZXIgew0KPiAtLQ0KPiAyLjQ5LjANCj4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
