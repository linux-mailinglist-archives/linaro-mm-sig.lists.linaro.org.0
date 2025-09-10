Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D66B50DDC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 08:10:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4E0144761
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Sep 2025 06:10:32 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 982D7443C0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Sep 2025 06:10:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=yG0meCwZ;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.54 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b04271cfc3eso850289166b.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Sep 2025 23:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757484622; x=1758089422; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aIIpzdS8c9OeYQKLWQsdxP00kZekR6xE06hcgvXgJZ8=;
        b=yG0meCwZBDabKHHc92ztxsJDFTH0gUdJJ9NxLR+jHZGL/wPH+zS5Gxu2aITAqO/+nA
         xZPFeHjwxHXV+mR14po6f0c4ltds/7rbf8P7CGvZFcx8h13mg1rogT7AuarwAFjb6V9M
         lWCvFI4C4FlcoIRnkzq7wRTVTayr6/emNwNe7QfrAGaUXjtJNDRisUL4+2OWUwp97/uF
         Nj2pT0raV/Yah69g5pcniSjv7eUyzxonPhyu8ZJn/DZ5cQMj/ZSsNJouuX09b6AZOPs1
         y/7bFbsrmUojFtpgTY3wZzDny0HqZOX3Gk9F+rh7TRqdA45ZJXg1e5tLo1CZMpW7p0C0
         +FJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757484622; x=1758089422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aIIpzdS8c9OeYQKLWQsdxP00kZekR6xE06hcgvXgJZ8=;
        b=O9HXgbjtsuB/9XrFz0+eBTZ7Ldt7NZKS8qFdyRm+Z4nXHzQDB4LKb+fjtbAZ6SA43j
         83GpLtplP6AF/Fd1y4/zQ85SSOMmKCn7ZLYGEtqG6oDHImYj0I8XhlG8mlNejkUB4VJx
         60gfuu6/fOhoqgjaXUrmXUZk7vbWDAXWLghkxPi7OC+VSXChnGA3i8wxhTJEuPG5W9ux
         4ItnQVPdFoD7Dyu8TG0h5/nl8GhzHX6y9O7BXt4Ou7vFisqYJDSaYQXq+Gqykws5Npwj
         UPfGcoRNFvUS3tUkVVjQH5CRTNZ1Jr+KSmZRi2+x6zOwKC9Vw8bfXoUhvg51vcSF87J1
         WiCg==
X-Forwarded-Encrypted: i=1; AJvYcCVdnz5KtBDS21mhFmiR9S8T0lRpgGMciio4E7x+2ogAJM0XJnnN9tSQrfXgmzbXu9e+KPxhvckuCyfkZKkz@lists.linaro.org
X-Gm-Message-State: AOJu0Yxw10kNy/o+zENDvhVsFHzMoxVwhqjgbVzW4f6IOZdarmOykdYk
	AnXwD9eBheswjdnrM7hzq7HGTgc0Kyst4ssLQPJbe/gKdEkO+EVttcVySy0x7ESHpcfax6QDlUQ
	UnZafU+mzK3Jp7MhOjD3AlXeHF86fosMWavYasfWwf5p5
X-Gm-Gg: ASbGnculpmyOmk64kwgBWSC0b18/sZSHhaXXLG6ssnIpOUmb40o847/diQL64epewb4
	beEMcvk8P6+Ebrq5KJlu5FCQgptV3HncLIEJfS+DKZDI0NlfScbUs0CXrhzXTo0dM74VPhpW1xK
	+hPjHIKgYyGgOkWXVgrQ2ieXQZK/WjzEiHugEo2mgLL8IKtDkk4MUKQa2OmgUv8sPc9+fqqTE8/
	6OgAEhUQTP0e5aogDlmP1SZXGSsgS6rcr6yYd4=
X-Google-Smtp-Source: AGHT+IHtltdBE6OyCGOjnTcRy/1zlqJJiS3bBRZ6Sp6xQiGD2+sybE8i8kqhky52N8PljETBXEHJPYT64WU/zafZwdY=
X-Received: by 2002:a17:907:6093:b0:b04:5e57:6d0d with SMTP id
 a640c23a62f3a-b04b1714547mr1454575766b.50.1757484622475; Tue, 09 Sep 2025
 23:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250728-dma-buf-heap-names-doc-v4-1-f73f71cf0dfd@kernel.org>
In-Reply-To: <20250728-dma-buf-heap-names-doc-v4-1-f73f71cf0dfd@kernel.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 10 Sep 2025 11:40:11 +0530
X-Gm-Features: AS18NWC9G3fMk0QfS66tLk1WOnGvCPe7TBSPm8NPx9Lx1FMibITf2FeEIh1wODI
Message-ID: <CAO_48GHsteXa9vu5n8FyuWYGOK7yMBhz3ppQeO=CtxTdcM+K8g@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 982D7443C0
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.54:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,google.com,lwn.net,ti.com,redhat.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: JFKEIZ5XOBF3HZSPP4ZI3XRCQIAKKPDH
X-Message-ID-Hash: JFKEIZ5XOBF3HZSPP4ZI3XRCQIAKKPDH
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JFKEIZ5XOBF3HZSPP4ZI3XRCQIAKKPDH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTWF4aW1lLA0KDQoNCk9uIE1vbiwgMjggSnVsIDIwMjUgYXQgMTM6NTEsIE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFdlJ3ZlIGRpc2N1c3NlZCBh
IG51bWJlciBvZiB0aW1lcyBvZiBob3cgc29tZSBoZWFwIG5hbWVzIGFyZSBiYWQsIGJ1dA0KPiBu
b3QgcmVhbGx5IHdoYXQgbWFrZXMgYSBnb29kIGhlYXAgbmFtZS4NCj4NCj4gTGV0J3MgZG9jdW1l
bnQgd2hhdCB3ZSBleHBlY3QgdGhlIGhlYXAgbmFtZXMgdG8gbG9vayBsaWtlLg0KVGhhbmsgeW91
IGZvciB0aGUgcGF0Y2guIEluIHByaW5jaXBsZSwgSSdtIG9rIHRvIHRha2UgdGhpcyBwYXRjaCwg
d2l0aA0KdGhlIG9idmlvdXMgdW5kZXJzdGFuZGluZyB0aGF0IGlmIHRoZXJlIGFyZSBmdXR1cmUg
aGVhcCBuYW1lDQpyZXF1aXJlbWVudHMgdGhhdCBjYW4ndCBiZSBzYXRpc2ZpZWQgd2l0aCB0aGVz
ZSBydWxlcywgd2Ugd2lsbCBkaXNjdXNzDQphbmQgYWRhcHQgdGhlIHJ1bGVzIGFjY29yZGluZ2x5
Lg0KDQpJIGhvcGUgdGhpcyBzb3VuZHMgcmVhc29uYWJsZSB0byBhbGwuDQoNCklmIEkgZG9uJ3Qg
aGVhciBhbnkgb2JqZWN0aW9ucywgSSdsbCBtZXJnZSB0aGlzIGJ5IHRoaXMgd2Vla2VuZC4NCj4N
Cj4gUmV2aWV3ZWQtYnk6IEFuZHJldyBEYXZpcyA8YWZkQHRpLmNvbT4NCj4gUmV2aWV3ZWQtYnk6
IEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90bWVAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBN
YXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoNCkJlc3QuDQpTdW1pdC4NCg0KPiAt
LS0NCj4gQ2hhbmdlcyBpbiB2NDoNCj4gLSBEcm9wcGVkICphbGwqIHRoZSBjYWNoZWFibGUgbWVu
dGlvbnMNCj4gLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNzE3
LWRtYS1idWYtaGVhcC1uYW1lcy1kb2MtdjMtMS1kMmRiYjRiOTVlZjZAa2VybmVsLm9yZw0KPg0K
PiBDaGFuZ2VzIGluIHYzOg0KPiAtIEdyYW1tYXIsIHNwZWxsaW5nIGZpeGVzDQo+IC0gUmVtb3Zl
IHRoZSBjYWNoZWFibGUgLyB1bmNhY2hlYWJsZSBuYW1lIHN1Z2dlc3Rpb24NCj4gLSBMaW5rIHRv
IHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNjE2LWRtYS1idWYtaGVhcC1uYW1l
cy1kb2MtdjItMS04YWU0MzE3NGNkYmZAa2VybmVsLm9yZw0KPg0KPiBDaGFuZ2VzIGluIHYyOg0K
PiAtIEFkZGVkIGp1c3RpZmljYXRpb25zIGZvciBlYWNoIHJlcXVpcmVtZW50IC8gc3VnZ2VzdGlv
bnMNCj4gLSBBZGRlZCBhIG1lbnRpb24gYW5kIGV4YW1wbGUgb2YgYnVmZmVyIGF0dHJpYnV0ZXMN
Cj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNTIwLWRtYS1i
dWYtaGVhcC1uYW1lcy1kb2MtdjEtMS1hYjMxZjc0ODA5ZWVAa2VybmVsLm9yZw0KPiAtLS0NCj4g
IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdCB8IDM1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMo
KykNCj4NCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVm
LWhlYXBzLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJz
dA0KPiBpbmRleCA1MzVmNDkwNDdjZTY0NTA3OTZiZjQzODBjOTg5ZTEwOTM1NWVmYzA1Li4xY2Vk
MjcyMGY5Mjk0MzI2NjExODJmMWEzYTg4YWExZmY4MGJkNmFmIDEwMDY0NA0KPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QNCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0DQo+IEBAIC0yMSw1ICsyMSw0
MCBAQCBmb2xsb3dpbmcgaGVhcHM6DQo+ICAgICB1c3VhbGx5IGNyZWF0ZWQgZWl0aGVyIHRocm91
Z2ggdGhlIGtlcm5lbCBjb21tYW5kbGluZSB0aHJvdWdoIHRoZQ0KPiAgICAgYGNtYWAgcGFyYW1l
dGVyLCBhIG1lbW9yeSByZWdpb24gRGV2aWNlLVRyZWUgbm9kZSB3aXRoIHRoZQ0KPiAgICAgYGxp
bnV4LGNtYS1kZWZhdWx0YCBwcm9wZXJ0eSBzZXQsIG9yIHRocm91Z2ggdGhlIGBDTUFfU0laRV9N
QllURVNgIG9yDQo+ICAgICBgQ01BX1NJWkVfUEVSQ0VOVEFHRWAgS2NvbmZpZyBvcHRpb25zLiBE
ZXBlbmRpbmcgb24gdGhlIHBsYXRmb3JtLCBpdA0KPiAgICAgbWlnaHQgYmUgY2FsbGVkIGBgcmVz
ZXJ2ZWRgYCwgYGBsaW51eCxjbWFgYCwgb3IgYGBkZWZhdWx0LXBvb2xgYC4NCj4gKw0KPiArTmFt
aW5nIENvbnZlbnRpb24NCj4gKz09PT09PT09PT09PT09PT09DQo+ICsNCj4gK2BgZG1hLWJ1ZmBg
IGhlYXBzIG5hbWUgc2hvdWxkIG1lZXQgYSBudW1iZXIgb2YgY29uc3RyYWludHM6DQo+ICsNCj4g
Ky0gVGhlIG5hbWUgbXVzdCBiZSBzdGFibGUsIGFuZCBtdXN0IG5vdCBjaGFuZ2UgZnJvbSBvbmUg
dmVyc2lvbiB0byB0aGUgb3RoZXIuDQo+ICsgIFVzZXJzcGFjZSBpZGVudGlmaWVzIGhlYXBzIGJ5
IHRoZWlyIG5hbWUsIHNvIGlmIHRoZSBuYW1lcyBldmVyIGNoYW5nZSwgd2UNCj4gKyAgd291bGQg
YmUgbGlrZWx5IHRvIGludHJvZHVjZSByZWdyZXNzaW9ucy4NCj4gKw0KPiArLSBUaGUgbmFtZSBt
dXN0IGRlc2NyaWJlIHRoZSBtZW1vcnkgcmVnaW9uIHRoZSBoZWFwIHdpbGwgYWxsb2NhdGUgZnJv
bSwgYW5kDQo+ICsgIG11c3QgdW5pcXVlbHkgaWRlbnRpZnkgaXQgaW4gYSBnaXZlbiBwbGF0Zm9y
bS4gU2luY2UgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucw0KPiArICB1c2UgdGhlIGhlYXAgbmFtZSBh
cyB0aGUgZGlzY3JpbWluYW50LCBpdCBtdXN0IGJlIGFibGUgdG8gdGVsbCB3aGljaCBoZWFwIGl0
DQo+ICsgIHdhbnRzIHRvIHVzZSByZWxpYWJseSBpZiB0aGVyZSdzIG11bHRpcGxlIGhlYXBzLg0K
PiArDQo+ICstIFRoZSBuYW1lIG11c3Qgbm90IG1lbnRpb24gaW1wbGVtZW50YXRpb24gZGV0YWls
cywgc3VjaCBhcyB0aGUgYWxsb2NhdG9yLiBUaGUNCj4gKyAgaGVhcCBkcml2ZXIgd2lsbCBjaGFu
Z2Ugb3ZlciB0aW1lLCBhbmQgaW1wbGVtZW50YXRpb24gZGV0YWlscyB3aGVuIGl0IHdhcw0KPiAr
ICBpbnRyb2R1Y2VkIG1pZ2h0IG5vdCBiZSByZWxldmFudCBpbiB0aGUgZnV0dXJlLg0KPiArDQo+
ICstIFRoZSBuYW1lIHNob3VsZCBkZXNjcmliZSBwcm9wZXJ0aWVzIG9mIHRoZSBidWZmZXJzIHRo
YXQgd291bGQgYmUgYWxsb2NhdGVkLg0KPiArICBEb2luZyBzbyB3aWxsIG1ha2UgaGVhcCBpZGVu
dGlmaWNhdGlvbiBlYXNpZXIgZm9yIHVzZXJzcGFjZS4gU3VjaCBwcm9wZXJ0aWVzDQo+ICsgIGFy
ZToNCj4gKw0KPiArICAtIGBgY29udGlndW91c2BgIGZvciBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMg
YnVmZmVyczsNCj4gKw0KPiArICAtIGBgcHJvdGVjdGVkYGAgZm9yIGVuY3J5cHRlZCBidWZmZXJz
IG5vdCBhY2Nlc3NpYmxlIHRoZSBPUzsNCj4gKw0KPiArLSBUaGUgbmFtZSBtYXkgZGVzY3JpYmUg
aW50ZW5kZWQgdXNhZ2UuIERvaW5nIHNvIHdpbGwgbWFrZSBoZWFwIGlkZW50aWZpY2F0aW9uDQo+
ICsgIGVhc2llciBmb3IgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBhbmQgdXNlcnMuDQo+ICsNCj4g
K0ZvciBleGFtcGxlLCBhc3N1bWluZyBhIHBsYXRmb3JtIHdpdGggYSByZXNlcnZlZCBtZW1vcnkg
cmVnaW9uIGxvY2F0ZWQNCj4gK2F0IHRoZSBSQU0gYWRkcmVzcyAweDQyMDAwMDAwLCBpbnRlbmRl
ZCB0byBhbGxvY2F0ZSB2aWRlbyBmcmFtZWJ1ZmZlcnMsDQo+ICtwaHlzaWNhbGx5IGNvbnRpZ3Vv
dXMsIGFuZCBiYWNrZWQgYnkgdGhlIENNQSBrZXJuZWwgYWxsb2NhdG9yLCBnb29kDQo+ICtuYW1l
cyB3b3VsZCBiZSBgYG1lbW9yeUA0MjAwMDAwMC1jb250aWd1b3VzYGAgb3IgYGB2aWRlb0A0MjAw
MDAwMGBgLCBidXQNCj4gK2BgY21hLXZpZGVvYGAgd291bGRuJ3QuDQo+DQo+IC0tLQ0KPiBiYXNl
LWNvbW1pdDogMDM4ZDYxZmQ2NDIyNzhiYWI2M2VlOGVmNzIyYzUwZDEwYWIwMWU4Zg0KPiBjaGFu
Z2UtaWQ6IDIwMjUwNTIwLWRtYS1idWYtaGVhcC1uYW1lcy1kb2MtMzEyNjFhYTBjZmU2DQo+DQo+
IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3Jn
Pg0KPg0KDQoNCi0tIA0KVGhhbmtzIGFuZCByZWdhcmRzLA0KDQpTdW1pdCBTZW13YWwgKGhlIC8g
aGltKQ0KU2VuaW9yIFRlY2ggTGVhZCAtIEFuZHJvaWQsIFBsYXRmb3JtcyBhbmQgVmlydHVhbGlz
YXRpb24NCkxpbmFyby5vcmcg4pSCIEFybSBTb2x1dGlvbnMgYXQgTGlnaHQgU3BlZWQNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
