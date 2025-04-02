Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A09CA792BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Apr 2025 18:12:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FAC941014
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Apr 2025 16:12:25 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by lists.linaro.org (Postfix) with ESMTPS id DCAD341014
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Apr 2025 16:12:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mLc6lx3o;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.178 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3d58908c43fso170825ab.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Apr 2025 09:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743610331; x=1744215131; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rK9kTwLfXEgDnRykzZWh9AEgnuJfNseTnoRiIhmpsc=;
        b=mLc6lx3oPxoKLaYf2eIL6wFSfK8qcMKe30NpuGuDpYNtIhtOZbkZ7BUjSRuJlBdQlP
         7pwuId5qR+5HFzk1W/RJPbHIC56mWFi1BcyjDpSmZcpWizTR/MJaqJg/LCLi1y0KwpkR
         B8whe0FS2J1s8mHPO+raGviE3D1vvLbWJP5GiUCJ9yqUR0bQxCP7AUZHWyiEAW4Brq8f
         KFQWbpg+WhYWE8qzw7pl49JjXCBxqDMpqtEU35z3Isf1JZEu7oMBVNwIq8k9LgFcopOx
         PmdM01rISoi8A0lZNKWymo5KLKm3SCXZS5P7xPVJGfbylFR4Ug0XuF5x1VZEeTth+G7E
         muJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743610331; x=1744215131;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rK9kTwLfXEgDnRykzZWh9AEgnuJfNseTnoRiIhmpsc=;
        b=J9wN0jbhU2Ly6ZQt4WUaVwOQfgJQ209G5VACPMSfdTdztyFyHw9Z8zQzcjfjeBy0QQ
         f0Psd/BRtl9fBUySwrn8BQpEd4gi/7pzE7pFsHpgs6C4Z1AmFYSK8319sFI8TR3rKzI9
         +Y4c7U7VeCJMuxetVEirDSCFAfwhmrW612UcWu8tFDYA5kTN+QEk+W5KuwLQFSDKwi4R
         TrRkUrJaOuF3PRpY2Ht8G7LiYpCqazOSGFiafHU4VNTzbv2HuM80AWlUPMIsGpJqy7RL
         C8dTm6yPXQdKqOl4/+58xc/1RpQwWHZm8a6Xd6wCwuxu8bson3BmDrml4UOnHsorrmmE
         6CsA==
X-Forwarded-Encrypted: i=1; AJvYcCWterqqMMmGITHVNv9ifynWF01LaMjZRHNnnOxRdM+vhaYIqYDxuBWmZWMyORrrmtLimNRrY5zTTxWRcVKK@lists.linaro.org
X-Gm-Message-State: AOJu0YxKlhWmYP/UqoswnQGUauCRvIVUd3oYu/H2KPUSnc0d+G3mL+1e
	r3RevKvchn2G+5lbHaMtI/I8zlRnSI3FIIfBJkxOeA0PjWGMEKxd7W6E59VBEjvkBi/P5OnWM2o
	WstZd18lg0Ys1pDaXo/bIJJJZk+4=
X-Gm-Gg: ASbGncuHJ/HQ3MxdIIOgh3eK+SRo7QD8ZoiR9GRnzzRmq8xDERDwi1n9WwdNXu5M5Zj
	KTz9y0apvOHPPttb1Bo44bYj+olazcnGN4mWQi46QC5nKToXMJGQnO3l9aX0Dhydj84+7R/P7L+
	9HxdDwQldLFT3Ir6qAoe/kwBYSODIzK2vVvJzu4b7P0JwpDRhiiiKbnE6XYyT+4S1OlghSoq8=
X-Google-Smtp-Source: AGHT+IFkYI6mSsCBU3Xd58kZsuiXhxMXIV+xUr1NKSGa56kWg9906qGj0TOjzVUzEtK07ut+ViwxdQy4wwNXDrQnrD0=
X-Received: by 2002:a05:6e02:4401:10b0:3d6:d3f7:8813 with SMTP id
 e9e14a558f8ab-3d6d3f7c3c0mr33927585ab.22.1743610331229; Wed, 02 Apr 2025
 09:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250401155758.48855-1-robdclark@gmail.com> <CAF6AEGsKbjq_q7ezQTn5vyAF1cjXahgbv84uYK35BJH1KBXSpw@mail.gmail.com>
 <ff614cb7-94ca-4d74-9bbb-f97c95893113@collabora.com> <b636faa5-ab31-41d6-b957-4dfe89a2b47d@amd.com>
In-Reply-To: <b636faa5-ab31-41d6-b957-4dfe89a2b47d@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 2 Apr 2025 09:11:59 -0700
X-Gm-Features: AQ5f1JoTRdjAnHaCZTeG_hJr4mmegr_fGINI7Zx0FF-EN5SHZjfv1OdMb7Fb8uc
Message-ID: <CAF6AEGutP-TTJjt=HrzpYooUerQ3jETYz=Mw8NEb2h3kLo=3kA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DCAD341014
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[collabora.com,lists.freedesktop.org,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.178:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.166.178:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: 2DUZGNBQSNMVD3EDRI2F5YZSGCSQ5CNO
X-Message-ID-Hash: 2DUZGNBQSNMVD3EDRI2F5YZSGCSQ5CNO
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2DUZGNBQSNMVD3EDRI2F5YZSGCSQ5CNO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMSwgMjAyNSBhdCAxMTo1NeKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAwMS4wNC4yNSB1bSAyMjo0NiBz
Y2hyaWViIERtaXRyeSBPc2lwZW5rbzoNCj4gPiBPbiA0LzEvMjUgMjM6NDAsIFJvYiBDbGFyayB3
cm90ZToNCj4gPj4gT24gVHVlLCBBcHIgMSwgMjAyNSBhdCA4OjU44oCvQU0gUm9iIENsYXJrIDxy
b2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4gPj4+IEZyb206IFJvYiBDbGFyayA8cm9iZGNs
YXJrQGNocm9taXVtLm9yZz4NCj4gPj4+DQo+ID4+PiBBZGQgc3VwcG9ydCBmb3IgZXhwb3J0aW5n
IGEgZG1hX2ZlbmNlIGZkIGZvciBhIHNwZWNpZmljIHBvaW50IG9uIGENCj4gPj4+IHRpbWVsaW5l
LiAgVGhpcyBpcyBuZWVkZWQgZm9yIHZ0ZXN0L3ZwaXBlWzFdWzJdIHRvIGltcGxlbWVudCB0aW1l
bGluZQ0KPiA+Pj4gc3luY29iaiBzdXBwb3J0LCBhcyBpdCBuZWVkcyBhIHdheSB0byB0dXJuIGEg
cG9pbnQgb24gYSB0aW1lbGluZSBiYWNrDQo+ID4+PiBpbnRvIGEgZG1hX2ZlbmNlIGZkLiAgSXQg
YWxzbyBjbG9zZXMgYW4gb2RkIG9taXNzaW9uIGZyb20gdGhlIHN5bmNvYmoNCj4gPj4+IFVBUEku
DQo+ID4+Pg0KPiA+Pj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21l
c2EvLS9tZXJnZV9yZXF1ZXN0cy8zMzQzMw0KPiA+Pj4gWzJdIGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy92aXJnbC92aXJnbHJlbmRlcmVyLy0vbWVyZ2VfcmVxdWVzdHMvODA1DQo+ID4+
Pg0KPiA+Pj4gdjI6IEFkZCBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUN
Cj4gPj4+IHYzOiBBZGQgdW5zdGFnZWQgdWFiaSBoZWFkZXIgaHVuaw0KPiA+Pj4gdjQ6IEFsc28g
aGFuZGxlIElNUE9SVF9TWU5DX0ZJTEUgY2FzZQ0KPiA+Pj4gdjU6IEFkZHJlc3MgY29tbWVudHMg
ZnJvbSBEbWl0cnkNCj4gPj4+IHY2OiBjaGVja3BhdGNoLnBsIG5pdHMNCj4gPj4+DQo+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4+PiBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
PiA+Pj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxh
Ym9yYS5jb20+DQo+ID4+PiAtLS0NCj4gPj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmou
YyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4+PiAgaW5jbHVk
ZS91YXBpL2RybS9kcm0uaCAgICAgICAgfCAgNCArKysNCj4gPj4+ICAyIGZpbGVzIGNoYW5nZWQs
IDQxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+Pj4NCj4gPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
c3luY29iai5jDQo+ID4+PiBpbmRleCA0ZjJhYjhhN2I1MGYuLjYzNmNkODNjYTI5ZSAxMDA2NDQN
Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+ID4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+Pj4gQEAgLTc0MSw3ICs3NDEsNyBAQCBz
dGF0aWMgaW50IGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVf
cHJpdmF0ZSwNCj4gPj4+ICB9DQo+ID4+Pg0KPiA+Pj4gIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpf
aW1wb3J0X3N5bmNfZmlsZV9mZW5jZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4g
Pj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgZmQs
IGludCBoYW5kbGUpDQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaW50IGZkLCBpbnQgaGFuZGxlLCB1NjQgcG9pbnQpDQo+ID4+PiAgew0KPiA+Pj4g
ICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IHN5bmNfZmlsZV9nZXRfZmVuY2UoZmQp
Ow0KPiA+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmo7DQo+ID4+PiBAQCAt
NzU1LDE0ICs3NTUsMjQgQEAgc3RhdGljIGludCBkcm1fc3luY29ial9pbXBvcnRfc3luY19maWxl
X2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiA+Pj4gICAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PRU5UOw0KPiA+Pj4gICAgICAgICB9DQo+ID4+Pg0KPiA+Pj4gLSAgICAg
ICBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsNCj4gPj4+ICsgICAg
ICAgaWYgKHBvaW50KSB7DQo+ID4+PiArICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZV9j
aGFpbiAqY2hhaW4gPSBkbWFfZmVuY2VfY2hhaW5fYWxsb2MoKTsNCj4gPj4+ICsNCj4gPj4+ICsg
ICAgICAgICAgICAgICBpZiAoIWNoYWluKQ0KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FTk9NRU07DQo+ID4+PiArDQo+ID4+PiArICAgICAgICAgICAgICAgZHJtX3N5bmNv
YmpfYWRkX3BvaW50KHN5bmNvYmosIGNoYWluLCBmZW5jZSwgcG9pbnQpOw0KPiA+Pj4gKyAgICAg
ICB9IGVsc2Ugew0KPiA+Pj4gKyAgICAgICAgICAgICAgIGRybV9zeW5jb2JqX3JlcGxhY2VfZmVu
Y2Uoc3luY29iaiwgZmVuY2UpOw0KPiA+Pj4gKyAgICAgICB9DQo+ID4+PiArDQo+ID4+PiAgICAg
ICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPiA+Pj4gICAgICAgICBkcm1fc3luY29ial9wdXQo
c3luY29iaik7DQo+ID4+PiAgICAgICAgIHJldHVybiAwOw0KPiA+Pj4gIH0NCj4gPj4+DQo+ID4+
PiAgc3RhdGljIGludCBkcm1fc3luY29ial9leHBvcnRfc3luY19maWxlKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZV9wcml2YXRlLA0KPiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGludCBoYW5kbGUsIGludCAqcF9mZCkNCj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnQgaGFuZGxlLCB1NjQgcG9pbnQsIGludCAqcF9mZCkNCj4g
Pj4+ICB7DQo+ID4+PiAgICAgICAgIGludCByZXQ7DQo+ID4+PiAgICAgICAgIHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOw0KPiA+Pj4gQEAgLTc3Miw3ICs3ODIsNyBAQCBzdGF0aWMgaW50IGRybV9z
eW5jb2JqX2V4cG9ydF9zeW5jX2ZpbGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQo+
ID4+PiAgICAgICAgIGlmIChmZCA8IDApDQo+ID4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIGZk
Ow0KPiA+Pj4NCj4gPj4+IC0gICAgICAgcmV0ID0gZHJtX3N5bmNvYmpfZmluZF9mZW5jZShmaWxl
X3ByaXZhdGUsIGhhbmRsZSwgMCwgMCwgJmZlbmNlKTsNCj4gPj4+ICsgICAgICAgcmV0ID0gZHJt
X3N5bmNvYmpfZmluZF9mZW5jZShmaWxlX3ByaXZhdGUsIGhhbmRsZSwgcG9pbnQsIDAsICZmZW5j
ZSk7DQo+ID4+PiAgICAgICAgIGlmIChyZXQpDQo+ID4+PiAgICAgICAgICAgICAgICAgZ290byBl
cnJfcHV0X2ZkOw0KPiA+Pj4NCj4gPj4+IEBAIC04NjksNiArODc5LDkgQEAgZHJtX3N5bmNvYmpf
aGFuZGxlX3RvX2ZkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+
ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZV9wcml2YXRlKQ0KPiA+Pj4gIHsNCj4gPj4+ICAgICAgICAgc3RydWN0IGRybV9zeW5jb2Jq
X2hhbmRsZSAqYXJncyA9IGRhdGE7DQo+ID4+PiArICAgICAgIHVuc2lnbmVkIGludCB2YWxpZF9m
bGFncyA9IERSTV9TWU5DT0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1FTElORSB8DQo+ID4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9TWU5DT0JKX0hBTkRMRV9UT19G
RF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFOw0KPiA+Pj4gKyAgICAgICB1NjQgcG9pbnQgPSAwOw0K
PiA+Pj4NCj4gPj4+ICAgICAgICAgaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwgRFJJ
VkVSX1NZTkNPQkopKQ0KPiA+Pj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU9QTk9UU1VQUDsN
Cj4gPj4+IEBAIC04NzYsMTMgKzg4OSwxOCBAQCBkcm1fc3luY29ial9oYW5kbGVfdG9fZmRfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gPj4+ICAgICAgICAgaWYg
KGFyZ3MtPnBhZCkNCj4gPj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPj4+
DQo+ID4+PiAtICAgICAgIGlmIChhcmdzLT5mbGFncyAhPSAwICYmDQo+ID4+PiAtICAgICAgICAg
ICBhcmdzLT5mbGFncyAhPSBEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfRVhQT1JUX1NZ
TkNfRklMRSkNCj4gPj4+ICsgICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgfnZhbGlkX2ZsYWdzKQ0K
PiA+Pj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+Pj4NCj4gPj4+ICsgICAg
ICAgaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJTUVM
SU5FKQ0KPiA+Pj4gKyAgICAgICAgICAgICAgIHBvaW50ID0gYXJncy0+cG9pbnQ7DQo+ID4+PiAr
DQo+ID4+PiAgICAgICAgIGlmIChhcmdzLT5mbGFncyAmIERSTV9TWU5DT0JKX0hBTkRMRV9UT19G
RF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFKQ0KPiA+Pj4gICAgICAgICAgICAgICAgIHJldHVybiBk
cm1fc3luY29ial9leHBvcnRfc3luY19maWxlKGZpbGVfcHJpdmF0ZSwgYXJncy0+aGFuZGxlLA0K
PiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICZhcmdzLT5mZCk7DQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcG9pbnQsICZhcmdzLT5mZCk7DQo+ID4+PiArDQo+ID4+PiArICAgICAg
IGlmIChhcmdzLT5wb2ludCkNCj4gPj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsN
Cj4gPj4+DQo+ID4+PiAgICAgICAgIHJldHVybiBkcm1fc3luY29ial9oYW5kbGVfdG9fZmQoZmls
ZV9wcml2YXRlLCBhcmdzLT5oYW5kbGUsDQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmFyZ3MtPmZkKTsNCj4gPj4+IEBAIC04OTMsNiArOTExLDkgQEAgZHJt
X3N5bmNvYmpfZmRfdG9faGFuZGxlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsDQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1fZmlsZSAqZmlsZV9wcml2YXRlKQ0KPiA+Pj4gIHsNCj4gPj4+ICAgICAgICAgc3RydWN0IGRy
bV9zeW5jb2JqX2hhbmRsZSAqYXJncyA9IGRhdGE7DQo+ID4+PiArICAgICAgIHVuc2lnbmVkIGlu
dCB2YWxpZF9mbGFncyA9IERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFHU19USU1FTElORSB8
DQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9TWU5DT0JKX0ZE
X1RPX0hBTkRMRV9GTEFHU19JTVBPUlRfU1lOQ19GSUxFOw0KPiA+Pj4gKyAgICAgICB1NjQgcG9p
bnQgPSAwOw0KPiA+Pj4NCj4gPj4+ICAgICAgICAgaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJl
KGRldiwgRFJJVkVSX1NZTkNPQkopKQ0KPiA+Pj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU9Q
Tk9UU1VQUDsNCj4gPj4gb2gsIEkgc3VwcG9zZSBJIHNob3VsZCBhZGQgYSBjaGVjayBmb3IgRFJJ
VkVSX1NZTkNPQkpfVElNRUxJTkU/ICBJJ2xsDQo+ID4+IHNlbmQgYSB2NyBhIGJpdCBsYXRlcg0K
PiA+IENocmlzdGlhbiBhbHJlYWR5IGFwcGxpZWQgdG8gbWlzYy10ZXN0LCBwbGVhc2UgcmViYXNl
IGFuZCBtYWtlIGl0IGFzIGENCj4gPiBuZXcgcGF0Y2gNCj4NCj4gWWVhaCwgc29ycnkgSSB3YXMg
YSBiaXQgdG8gcXVpY2sgb2J2aW91c2x5Lg0KPg0KPiBPbiB0aGUgb3RoZXIgaGFuZCBJIGRvbid0
IHNlZSBhbiBpbW1lZGlhdGUgbmVlZCBmb3IgYSBjaGVjayBmb3IgRFJJVkVSX1NZTkNPQkpfVElN
RUxJTkUgaGVyZS4NCj4NCj4gVGhlIGZ1bmN0aW9ucyBzaG91bGQgd29yayBldmVuIHdoZW4gdGhl
IGRyaXZlciBkb2Vzbid0IGhhbmRsZSB0aW1lbGluZSBzeW5jb2JqIG9uIGl0J3Mgb3duLg0KDQpP
aywgbm8gcHJvYmxlbSwgSSdsbCBqdXN0IHB1dCBhbiBleHBsaWNpdCBjYXAgY2hlY2sgaW4gdmly
Z2xyZW5kZXJlciwNCnJhdGhlciB0aGFuIHJlbHlpbmcgb24gdGhpcyB0byB0ZWxsIG1lIGFsc28g
aWYgdGhlIGRyaXZlciBzdXBwb3J0cw0KdGltZWxpbmU6DQoNCiAgICAgICAgIHN0cnVjdCBkcm1f
c3luY29ial9oYW5kbGUgYXJncyA9IHsNCiAgICAgICAgICAgIC5oYW5kbGUgPSAwLCAgIC8qIGlu
dmFsaWQgaGFuZGxlICovDQogICAgICAgICAgICAuZmxhZ3MgPSBEUk1fU1lOQ09CSl9IQU5ETEVf
VE9fRkRfRkxBR1NfRVhQT1JUX1NZTkNfRklMRSB8DQogICAgICAgICAgICAgICAgICAgICBEUk1f
U1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUsDQogICAgICAgICAgICAuZmQgPSAt
MSwNCiAgICAgICAgICAgIC5wb2ludCA9IDEsDQogICAgICAgICB9Ow0KDQogICAgICAgICBlcnJu
byA9IDA7DQogICAgICAgICByZXQgPSBkcm1Jb2N0bChmZCwgRFJNX0lPQ1RMX1NZTkNPQkpfSEFO
RExFX1RPX0ZELCAmYXJncyk7DQoNCiAgICAgICAgIC8qIEVOT0VOVCBtZWFucyB0aGUga2VybmVs
IHN1cHBvcnRzDQpEUk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUNCiAgICAg
ICAgICAqIGJ1dCB0aGF0IHdlIGRpZG4ndCBwcm92aWRlIGEgdmFsaWQgaGFuZGxlLiAgRUlOVkFM
IG1lYW5zDQp0aGUga2VybmVsIGRvZXMNCiAgICAgICAgICAqIG5vdCBzdXBwb3J0IERSTV9TWU5D
T0JKX0hBTkRMRV9UT19GRF9GTEFHU19USU1FTElORS4NCiAgICAgICAgICAqLw0KICAgICAgICAg
aWYgKGVycm5vID09IEVOT0VOVCkgew0KICAgICAgICAgICAgcmVzcFswXSA9IHRydWU7DQogICAg
ICAgICAgICByZXNwWzFdID0gMTsNCiAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBhc3Nl
cnQoZXJybm8gPT0gRUlOVkFMKTsNCiAgICAgICAgIH0NCg0KDQpCUiwNCi1SDQoNCj4gUmVnYXJk
cywNCj4gQ2hyaXN0aWFuLg0KPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
