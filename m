Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E5A78066
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 18:30:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37527446ED
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 16:30:04 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id BB5F24461D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 16:27:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=D+0onT4X;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.222.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c592764e24so195785a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Apr 2025 09:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743524850; x=1744129650; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqFXSYEwhYNvuYelKTlJfqjn2CtSSo/5QPRUsnL00Bs=;
        b=D+0onT4XRex4qFBG4CSkAQulgoiQV+zZzqcI8yz6gIDZbTJ5Pakooh6hAa81ruycTC
         O9J10l5gYc3L0m9hJ1x8QiXv7gn/OjmUwpDZh+Tjp4vaqblqEXA60RSi/wfbY8PDZAyl
         AQuaYhQL2BgmY+97hmtID7T7QqyQnpx40NxoyzkunCsMUqgSiUs9k705CONTnvp7d4SU
         pItNWL7fBE8z7IFLElG8EPA1fM5SEk5dg4Sv6jMqet9V5JrlwhbMic2Cr/ZiT66uvQxE
         oXx1pKKzdL6OFXBPwl2Cen1bVGaq8jN9QmQynyt6AEu8KaytZgEFUnnDN+I5caeWRkR4
         83Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743524850; x=1744129650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqFXSYEwhYNvuYelKTlJfqjn2CtSSo/5QPRUsnL00Bs=;
        b=IhTdJN1RvsIPYWn/yR7AZCegRnO+FMxpj2FHBO0lCD2emg/79wE3FMfIR5cFqV9gv4
         jjZ63g496SAdrr8ek7pLFx3foZDqo7bJ3vXrPpMUxtQbMUKsxlnYnNPtyj5OMWUoH1dG
         tH5zVANeEbgyJa9OrspTZFq+5ZXXm02xOuDB5wi+U4w68BxYNFjcigWLfY+FEmXNePon
         lhm+pA3JQzHMns0cAemA5bTEC4P5RJYP9ogHRUNtsSSdJvfNr3fyLq8jEFLO+9k2FUaJ
         QkVBd4DiqBJyQWfZHlZogy0b4fDd/OErfqpeajcpeHr2ngfczjrNCo2yG7KoPU6U08ff
         ytLA==
X-Forwarded-Encrypted: i=1; AJvYcCW36cCdtx8+ZYLRXb2Fy+cfreHEiGe2gpLLmC06i5xYY/wMKx90L0KhNufEYlBQeXxR+Gf2sVmed/pCmV/J@lists.linaro.org
X-Gm-Message-State: AOJu0Yw6nWdPeJ5SEOkHXugmZrOfRMnm3j2aifn1dVJXsggNKXyIgNec
	GHzKXIdahvTW1kuMI3vwummgheUDtuSRJ4wmimYMHSqkLutd6nNa5l0jFUM6XjysmUdpMlp498k
	49KQiq5GMOLGQCVrIqgYeHMJgtzDLrQ==
X-Gm-Gg: ASbGnctjdVklxyjjF9Vti+WkMFKzfnZy9OLxMu+M3vSQHFO9se0YvjMI7Ad0DDPDpDF
	u+5fGkS6k0ZZodMxh3TKhO6EhJqn5NXgJVwSVcCojQUQIfnt4rS957458OEWdCAFjp4d04Onl1A
	gwVbGRZKYrI97lphYScbuqFTg4f05ynUIRDJ42KDKkzQC1nb1xFbnFN9VjtSwh
X-Google-Smtp-Source: AGHT+IEB8Y1ukx7WzzSNycHm2osv0GmAeeTqv2BbGe+G8ag4TjR+T4vF4B+WdEZAuzdCZJPyEnzG046vB0c4B3SJ0tU=
X-Received: by 2002:a05:6e02:1101:b0:3d6:d147:c6a2 with SMTP id
 e9e14a558f8ab-3d6d3487727mr6919155ab.8.1743524289685; Tue, 01 Apr 2025
 09:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250331212333.16029-1-robdclark@gmail.com> <593b5915-7148-446a-a240-7f7939025a5f@gmail.com>
In-Reply-To: <593b5915-7148-446a-a240-7f7939025a5f@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 1 Apr 2025 09:17:55 -0700
X-Gm-Features: AQ5f1Jr1XOgv1FGNyqKdzNaS64bxJ7dCHmN1AVvvv26tXOsRZqym_e0zrMFu_7U
Message-ID: <CAF6AEGvvTsmeESbzf0DU3171t5e+mLNLb1=J9KvTVe3BdxOOQg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BB5F24461D
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.222.175:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.898];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: KNIEC52ZKIMJTYNM2724DJZF6SZDDYKF
X-Message-ID-Hash: KNIEC52ZKIMJTYNM2724DJZF6SZDDYKF
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNIEC52ZKIMJTYNM2724DJZF6SZDDYKF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMSwgMjAyNSBhdCA0OjE44oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNrb2Vu
aWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4gQW0gMzEuMDMuMjUgdW0g
MjM6MjMgc2NocmllYiBSb2IgQ2xhcms6DQo+ID4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtA
Y2hyb21pdW0ub3JnPg0KPiA+DQo+ID4gQWRkIHN1cHBvcnQgZm9yIGV4cG9ydGluZyBhIGRtYV9m
ZW5jZSBmZCBmb3IgYSBzcGVjaWZpYyBwb2ludCBvbiBhDQo+ID4gdGltZWxpbmUuICBUaGlzIGlz
IG5lZWRlZCBmb3IgdnRlc3QvdnBpcGVbMV1bMl0gdG8gaW1wbGVtZW50IHRpbWVsaW5lDQo+ID4g
c3luY29iaiBzdXBwb3J0LCBhcyBpdCBuZWVkcyBhIHdheSB0byB0dXJuIGEgcG9pbnQgb24gYSB0
aW1lbGluZSBiYWNrDQo+ID4gaW50byBhIGRtYV9mZW5jZSBmZC4gIEl0IGFsc28gY2xvc2VzIGFu
IG9kZCBvbWlzc2lvbiBmcm9tIHRoZSBzeW5jb2JqDQo+ID4gVUFQSS4NCj4gPg0KPiA+IFsxXSBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMv
MzM0MzMNCj4gPiBbMl0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3ZpcmdsL3Zpcmds
cmVuZGVyZXIvLS9tZXJnZV9yZXF1ZXN0cy84MDUNCj4gPg0KPiA+IHYyOiBBZGQgRFJNX1NZTkNP
QkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJTUVMSU5FDQo+ID4gdjM6IEFkZCB1bnN0YWdlZCB1YWJp
IGhlYWRlciBodW5rDQo+ID4gdjQ6IEFsc28gaGFuZGxlIElNUE9SVF9TWU5DX0ZJTEUgY2FzZQ0K
PiA+IHY1OiBBZGRyZXNzIGNvbW1lbnRzIGZyb20gRG1pdHJ5DQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gLS0tDQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0NCj4gPiAgaW5jbHVkZS91YXBpL2RybS9kcm0uaCAgICAgICAgfCAgNCArKysr
DQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KPiA+IGluZGV4IDRmMmFiOGE3YjUwZi4uYjBh
NGM1OGZlNzI2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCj4gPiBAQCAtNzQxLDcg
Kzc0MSw3IEBAIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZmRfdG9faGFuZGxlKHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZV9wcml2YXRlLA0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGludCBkcm1fc3lu
Y29ial9pbXBvcnRfc3luY19maWxlX2ZlbmNlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRl
LA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGZk
LCBpbnQgaGFuZGxlKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50IGZkLCBpbnQgaGFuZGxlLCB1NjQgcG9pbnQpDQo+ID4gIHsNCj4gPiAgICAgICBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IHN5bmNfZmlsZV9nZXRfZmVuY2UoZmQpOw0KPiA+ICAg
ICAgIHN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsNCj4gPiBAQCAtNzU1LDE0ICs3NTUsMjIg
QEAgc3RhdGljIGludCBkcm1fc3luY29ial9pbXBvcnRfc3luY19maWxlX2ZlbmNlKHN0cnVjdCBk
cm1fZmlsZSAqZmlsZV9wcml2YXRlLA0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7
DQo+ID4gICAgICAgfQ0KPiA+DQo+ID4gLSAgICAgZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShz
eW5jb2JqLCBmZW5jZSk7DQo+ID4gKyAgICAgaWYgKHBvaW50KSB7DQo+ID4gKyAgICAgICAgICAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IGRtYV9mZW5jZV9jaGFpbl9hbGxvYygp
Ow0KPiA+ICsgICAgICAgICAgICAgaWYgKCFjaGFpbikNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9NRU07DQo+ID4gKyAgICAgICAgICAgICBkcm1fc3luY29ial9hZGRfcG9p
bnQoc3luY29iaiwgY2hhaW4sIGZlbmNlLCBwb2ludCk7DQo+DQo+IEp1c3QgYSBuaXQgcGljayBi
dXQgY2hlY2twYXRjaC5wbCB3aWxsIGNvbXBsYWluIGFib3V0IGl0OiBFbXB0eSBsaW5lIGJldHdl
ZW4gZGVjbGFyYXRpb24gYW5kIGNvZGUgcGxlYXNlLg0KPg0KPiBNYXliZSBkb3VibGUgY2hlY2sg
aWYgY2hlY3BhdGNoLnBsIGlzIG90aGVyd2lzZSBoYXBweSB3aXRoIHRoZSBwYXRjaC4NCj4NCj4g
V2l0aCB0aGF0IGRvbmUgZmVlbCBmcmVlIHRvIGFkZCBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPi4NCj4NCj4gTGV0IG1lIGtub3cgaWYgSSBz
aG91bGQgcHVzaCBpdCB0byBkcm0tbWlzYy1uZXh0Lg0KDQpZZXMgcGxlYXNlLCBJJ3ZlIHNlbnQg
YSB2Ng0KDQpCUiwNCi1SDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+ICsgICAg
IH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5
bmNvYmosIGZlbmNlKTsNCj4gPiArICAgICB9DQo+ID4gKw0KPiA+ICAgICAgIGRtYV9mZW5jZV9w
dXQoZmVuY2UpOw0KPiA+ICAgICAgIGRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTsNCj4gPiAgICAg
ICByZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBpbnQgZHJtX3N5bmNvYmpfZXhw
b3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5kbGUsIGludCAqcF9mZCkNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBoYW5kbGUsIHU2NCBw
b2ludCwgaW50ICpwX2ZkKQ0KPiA+ICB7DQo+ID4gICAgICAgaW50IHJldDsNCj4gPiAgICAgICBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4gPiBAQCAtNzcyLDcgKzc4MCw3IEBAIHN0YXRpYyBp
bnQgZHJtX3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJp
dmF0ZSwNCj4gPiAgICAgICBpZiAoZmQgPCAwKQ0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIGZk
Ow0KPiA+DQo+ID4gLSAgICAgcmV0ID0gZHJtX3N5bmNvYmpfZmluZF9mZW5jZShmaWxlX3ByaXZh
dGUsIGhhbmRsZSwgMCwgMCwgJmZlbmNlKTsNCj4gPiArICAgICByZXQgPSBkcm1fc3luY29ial9m
aW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgaGFuZGxlLCBwb2ludCwgMCwgJmZlbmNlKTsNCj4gPiAg
ICAgICBpZiAocmV0KQ0KPiA+ICAgICAgICAgICAgICAgZ290byBlcnJfcHV0X2ZkOw0KPiA+DQo+
ID4gQEAgLTg2OSw2ICs4NzcsOSBAQCBkcm1fc3luY29ial9oYW5kbGVfdG9fZmRfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSkNCj4gPiAgew0KPiA+
ICAgICAgIHN0cnVjdCBkcm1fc3luY29ial9oYW5kbGUgKmFyZ3MgPSBkYXRhOw0KPiA+ICsgICAg
IHVuc2lnbmVkIHZhbGlkX2ZsYWdzID0gRFJNX1NZTkNPQkpfSEFORExFX1RPX0ZEX0ZMQUdTX1RJ
TUVMSU5FIHwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9TWU5DT0JKX0hB
TkRMRV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFOw0KPiA+ICsgICAgIHU2NCBwb2ludCA9
IDA7DQo+ID4NCj4gPiAgICAgICBpZiAoIWRybV9jb3JlX2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklW
RVJfU1lOQ09CSikpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4g
QEAgLTg3NiwxMyArODg3LDE4IEBAIGRybV9zeW5jb2JqX2hhbmRsZV90b19mZF9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+ICAgICAgIGlmIChhcmdzLT5wYWQp
DQo+ID4gICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPg0KPiA+IC0gICAgIGlmIChh
cmdzLT5mbGFncyAhPSAwICYmDQo+ID4gLSAgICAgICAgIGFyZ3MtPmZsYWdzICE9IERSTV9TWU5D
T0JKX0hBTkRMRV9UT19GRF9GTEFHU19FWFBPUlRfU1lOQ19GSUxFKQ0KPiA+ICsgICAgIGlmIChh
cmdzLT5mbGFncyAmIH52YWxpZF9mbGFncykNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOw0KPiA+DQo+ID4gKyAgICAgaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfSEFORExF
X1RPX0ZEX0ZMQUdTX1RJTUVMSU5FKQ0KPiA+ICsgICAgICAgICAgICAgcG9pbnQgPSBhcmdzLT5w
b2ludDsNCj4gPiArDQo+ID4gICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgRFJNX1NZTkNPQkpfSEFO
RExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUpDQo+ID4gICAgICAgICAgICAgICByZXR1
cm4gZHJtX3N5bmNvYmpfZXhwb3J0X3N5bmNfZmlsZShmaWxlX3ByaXZhdGUsIGFyZ3MtPmhhbmRs
ZSwNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICZhcmdzLT5mZCk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwb2ludCwgJmFyZ3MtPmZkKTsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGFyZ3Mt
PnBvaW50KQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4NCj4gPiAgICAg
ICByZXR1cm4gZHJtX3N5bmNvYmpfaGFuZGxlX3RvX2ZkKGZpbGVfcHJpdmF0ZSwgYXJncy0+aGFu
ZGxlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmFyZ3MtPmZk
KTsNCj4gPiBAQCAtODkzLDYgKzkwOSw5IEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2YXRlKQ0KPiA+ICB7
DQo+ID4gICAgICAgc3RydWN0IGRybV9zeW5jb2JqX2hhbmRsZSAqYXJncyA9IGRhdGE7DQo+ID4g
KyAgICAgdW5zaWduZWQgdmFsaWRfZmxhZ3MgPSBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxB
R1NfVElNRUxJTkUgfA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX1NZTkNP
QkpfRkRfVE9fSEFORExFX0ZMQUdTX0lNUE9SVF9TWU5DX0ZJTEU7DQo+ID4gKyAgICAgdTY0IHBv
aW50ID0gMDsNCj4gPg0KPiA+ICAgICAgIGlmICghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYs
IERSSVZFUl9TWU5DT0JKKSkNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU9QTk9UU1VQUDsN
Cj4gPiBAQCAtOTAwLDE0ICs5MTksMjAgQEAgZHJtX3N5bmNvYmpfZmRfdG9faGFuZGxlX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+ID4gICAgICAgaWYgKGFyZ3Mt
PnBhZCkNCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+DQo+ID4gLSAgICAg
aWYgKGFyZ3MtPmZsYWdzICE9IDAgJiYNCj4gPiAtICAgICAgICAgYXJncy0+ZmxhZ3MgIT0gRFJN
X1NZTkNPQkpfRkRfVE9fSEFORExFX0ZMQUdTX0lNUE9SVF9TWU5DX0ZJTEUpDQo+ID4gKyAgICAg
aWYgKGFyZ3MtPmZsYWdzICYgfnZhbGlkX2ZsYWdzKQ0KPiA+ICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7DQo+ID4NCj4gPiArICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09CSl9G
RF9UT19IQU5ETEVfRkxBR1NfVElNRUxJTkUpDQo+ID4gKyAgICAgICAgICAgICBwb2ludCA9IGFy
Z3MtPnBvaW50Ow0KPiA+ICsNCj4gPiAgICAgICBpZiAoYXJncy0+ZmxhZ3MgJiBEUk1fU1lOQ09C
Sl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNfRklMRSkNCj4gPiAgICAgICAgICAgICAg
IHJldHVybiBkcm1fc3luY29ial9pbXBvcnRfc3luY19maWxlX2ZlbmNlKGZpbGVfcHJpdmF0ZSwN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGFyZ3MtPmZkLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYXJncy0+aGFuZGxlKTsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZ3MtPmhhbmRsZSwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBv
aW50KTsNCj4gPiArDQo+ID4gKyAgICAgaWYgKGFyZ3MtPnBvaW50KQ0KPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4NCj4gPiAgICAgICByZXR1cm4gZHJtX3N5bmNvYmpfZmRf
dG9faGFuZGxlKGZpbGVfcHJpdmF0ZSwgYXJncy0+ZmQsDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmYXJncy0+aGFuZGxlKTsNCj4gPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2RybS9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtLmgNCj4gPiBpbmRleCA3
ZmJhMzdiOTQ0MDEuLmU2M2E3MWQzYzYwNyAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkv
ZHJtL2RybS5oDQo+ID4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm0uaA0KPiA+IEBAIC05MDUs
MTMgKzkwNSwxNyBAQCBzdHJ1Y3QgZHJtX3N5bmNvYmpfZGVzdHJveSB7DQo+ID4gIH07DQo+ID4N
Cj4gPiAgI2RlZmluZSBEUk1fU1lOQ09CSl9GRF9UT19IQU5ETEVfRkxBR1NfSU1QT1JUX1NZTkNf
RklMRSAoMSA8PCAwKQ0KPiA+ICsjZGVmaW5lIERSTV9TWU5DT0JKX0ZEX1RPX0hBTkRMRV9GTEFH
U19USU1FTElORSAgICAgICAgICgxIDw8IDEpDQo+ID4gICNkZWZpbmUgRFJNX1NZTkNPQkpfSEFO
RExFX1RPX0ZEX0ZMQUdTX0VYUE9SVF9TWU5DX0ZJTEUgKDEgPDwgMCkNCj4gPiArI2RlZmluZSBE
Uk1fU1lOQ09CSl9IQU5ETEVfVE9fRkRfRkxBR1NfVElNRUxJTkUgICAgICAgICAoMSA8PCAxKQ0K
PiA+ICBzdHJ1Y3QgZHJtX3N5bmNvYmpfaGFuZGxlIHsNCj4gPiAgICAgICBfX3UzMiBoYW5kbGU7
DQo+ID4gICAgICAgX191MzIgZmxhZ3M7DQo+ID4NCj4gPiAgICAgICBfX3MzMiBmZDsNCj4gPiAg
ICAgICBfX3UzMiBwYWQ7DQo+ID4gKw0KPiA+ICsgICAgIF9fdTY0IHBvaW50Ow0KPiA+ICB9Ow0K
PiA+DQo+ID4gIHN0cnVjdCBkcm1fc3luY29ial90cmFuc2ZlciB7DQo+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
