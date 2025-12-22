Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MEGIboK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2115D411758
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E734A448BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:44 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by lists.linaro.org (Postfix) with ESMTPS id CB4323F7D8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Dec 2025 13:09:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=BrP2vg5H;
	spf=pass (lists.linaro.org: domain of urezki@gmail.com designates 209.85.167.43 as permitted sender) smtp.mailfrom=urezki@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5959d9a8eceso4487789e87.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Dec 2025 05:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766408939; x=1767013739; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TqkA3QTeqvfIHTaFJmrTviJUHc15iycYlD6ucgB4o6w=;
        b=BrP2vg5Hr+XE8YFCylT1hqqWYDPSMHlwZGKeRgKVHKsPR9K7gaC80NjMdDVwsmC+vJ
         78iKRsP2dPrhDJ85hapItKb+C6Rz7DLmoJmm5Qr0+t8KFPh9gwinsHEX1EAMu1e273hN
         GFrWbwAW1sPG5ODSfoENOdZASrs0B44C9ZR1P5XqcTa1rO8wMQ3eC7eu0gnSLehE30GO
         bBpaGYIbqYFhNpQAVcxM2JHwDc6r1ko42OJ3gTQiYizAtDjGfr/3zUP4sHSyUZw0Aizt
         NXPb8rMKMJNz0ICahfVIPKfdFaYYLeOL6cniDucz7qlBAdso08KIenYAT6NzKazwZWwU
         MNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408939; x=1767013739;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TqkA3QTeqvfIHTaFJmrTviJUHc15iycYlD6ucgB4o6w=;
        b=PUROR/mCAQenVszPyq2Jl4Ok7R52yGtgMUT/tlKDMo4n/ho3k9Beod5ja8EqahZq66
         rnK9ixE85KY5KSDoJLKqgv5zhC0r6xZWLxsnetfaQuB7zQzdpuv8wX7y0RBFO5yHogpI
         EExjiH+kvzeEqS1PERGClkj3t1y2iezVpf4J2UW4pgIjymALzPxNbCjUwUq1UMzRUJAs
         /0X52pTKme5+IekeijSN1avR+1p1rsMvwMbV/JVmxXd3iVuxaWCQ39JPmyqr7J4vMonh
         gtCSgA6GuvGI9zmxqGc6IjBvXKkqmWiP96FiFPGs9EHGxg9WHKUVvsJ9YE/io6KIOm7v
         47kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkL6+jBP8pun0216IByN1KW2xsUHsIM+Eq/pRG9Ov6jvymUvJ+u0YZggZ5E80F/P1SOAYP6R+eVb2X9HJo@lists.linaro.org
X-Gm-Message-State: AOJu0Yxubq4onhzdnIueyzWRIgs+K/WNy0ldgF7puoU6nTjh/cWadh06
	MVQzKfSFbLGkeXOlkcrDLKn2h0/EpW+Rjvp5PHz1ivrYCP1tLqCiKPp3
X-Gm-Gg: AY/fxX7KhE6G/8LUTgS2xXA9HeuMP6cf4wuwyKFgtltQIPC6/w7mt/XkEghv1d1BfNM
	un2b4CkMu52SFIoMNqIY8gP9SDjZ38qkWz1JKYXOc7NVgYiSHKthuchb4iLgpZ1dgpIxFdVXzXN
	RPTW2+YvjH8FzCLsgiiuByfuAxmKfuYhbyI8Y5eEj8cwX2cxptRYw4iSkSTnT4vWcO0AMqSGNGw
	j/imZi3nLdfBsVAYL0ftHGE+qN/8wsBbERwgAJi6E7+k5oOmnOS0DX0gHO6mM3C24EwiIps3+z7
	PUmuKzskchfuQFNkukB8MnXZ3b45k7s0ChNWOL+PAs0RXc3Cy7ZpA+i2mfLuNSjjRSzruIrb8CM
	yXlbrNY06DjGqnSQTdO4cs8/RZ3vNl76QKRbXze0sD7aqGX3mTPY1
X-Google-Smtp-Source: AGHT+IEoHaD9txNltw8AYIh3bvKWbd6Ld21Uc2hEUyNiNte2MbtG2FdcMNsmNf298a2tH2qY7Uf5Kw==
X-Received: by 2002:a05:6512:3f1a:b0:598:e39b:d628 with SMTP id 2adb3069b0e04-59a17d7271amr3858414e87.5.1766408939248;
        Mon, 22 Dec 2025 05:08:59 -0800 (PST)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f4e4sm3115532e87.83.2025.12.22.05.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:08:58 -0800 (PST)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Mon, 22 Dec 2025 14:08:56 +0100
To: Barry Song <21cnbao@gmail.com>
Message-ID: <aUlC6N1jmDbMDPc5@milan>
References: <aUQHss6K8b_esvpw@milan>
 <20251218212436.17142-1-21cnbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251218212436.17142-1-21cnbao@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: urezki@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ICBUB64HCM345KZLWNVFKHPUTZZONX62
X-Message-ID-Hash: ICBUB64HCM345KZLWNVFKHPUTZZONX62
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:10 +0000
CC: urezki@gmail.com, akpm@linux-foundation.org, david@kernel.org, dri-devel@lists.freedesktop.org, jstultz@google.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, mripard@kernel.org, sumit.semwal@linaro.org, v-songbaohua@oppo.com, zhengtangquan@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] mm/vmalloc: map contiguous pages in batches for vmap() whenever possible
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ICBUB64HCM345KZLWNVFKHPUTZZONX62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[2763];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.048];
	FROM_NEQ_ENVFROM(0.00)[urezki@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,kernel.org,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,kvack.org,linaro.org,oppo.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,oppo.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 2115D411758
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgMDU6MjQ6MzZBTSArMDgwMCwgQmFycnkgU29uZyB3cm90
ZToNCj4gT24gVGh1LCBEZWMgMTgsIDIwMjUgYXQgOTo1NeKAr1BNIFVsYWR6aXNsYXUgUmV6a2kg
PHVyZXpraUBnbWFpbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gVGh1LCBEZWMgMTgsIDIwMjUg
YXQgMDI6MDE6NTZQTSArMDEwMCwgRGF2aWQgSGlsZGVuYnJhbmQgKFJlZCBIYXQpIHdyb3RlOg0K
PiA+ID4gT24gMTIvMTUvMjUgMDY6MzAsIEJhcnJ5IFNvbmcgd3JvdGU6DQo+ID4gPiA+IEZyb206
IEJhcnJ5IFNvbmcgPHYtc29uZ2Jhb2h1YUBvcHBvLmNvbT4NCj4gPiA+ID4NCj4gPiA+ID4gSW4g
bWFueSBjYXNlcywgdGhlIHBhZ2VzIHBhc3NlZCB0byB2bWFwKCkgbWF5IGluY2x1ZGUgaGlnaC1v
cmRlcg0KPiA+ID4gPiBwYWdlcyBhbGxvY2F0ZWQgd2l0aCBfX0dGUF9DT01QIGZsYWdzLiBGb3Ig
ZXhhbXBsZSwgdGhlIHN5c3RlbWhlYXANCj4gPiA+ID4gb2Z0ZW4gYWxsb2NhdGVzIHBhZ2VzIGlu
IGRlc2NlbmRpbmcgb3JkZXI6IG9yZGVyIDgsIHRoZW4gNCwgdGhlbiAwLg0KPiA+ID4gPiBDdXJy
ZW50bHksIHZtYXAoKSBpdGVyYXRlcyBvdmVyIGV2ZXJ5IHBhZ2UgaW5kaXZpZHVhbGx54oCUZXZl
biBwYWdlcw0KPiA+ID4gPiBpbnNpZGUgYSBoaWdoLW9yZGVyIGJsb2NrIGFyZSBoYW5kbGVkIG9u
ZSBieSBvbmUuDQo+ID4gPiA+DQo+ID4gPiA+IFRoaXMgcGF0Y2ggZGV0ZWN0cyBoaWdoLW9yZGVy
IHBhZ2VzIGFuZCBtYXBzIHRoZW0gYXMgYSBzaW5nbGUNCj4gPiA+ID4gY29udGlndW91cyBibG9j
ayB3aGVuZXZlciBwb3NzaWJsZS4NCj4gPiA+ID4NCj4gPiA+ID4gQW4gYWx0ZXJuYXRpdmUgd291
bGQgYmUgdG8gaW1wbGVtZW50IGEgbmV3IEFQSSwgdm1hcF9zZygpLCBidXQgdGhhdA0KPiA+ID4g
PiBjaGFuZ2Ugc2VlbXMgdG8gYmUgbGFyZ2UgaW4gc2NvcGUuDQo+ID4gPiA+DQo+ID4gPiA+IFdo
ZW4gdm1hcHBpbmcgYSAxMjhNQiBkbWEtYnVmIHVzaW5nIHRoZSBzeXN0ZW1oZWFwLCB0aGlzIHBh
dGNoDQo+ID4gPiA+IG1ha2VzIHN5c3RlbV9oZWFwX2RvX3ZtYXAoKSByb3VnaGx5IDE3w5cgZmFz
dGVyLg0KPiA+ID4gPg0KPiA+ID4gPiBXLyBwYXRjaDoNCj4gPiA+ID4gWyDCoCAxMC40MDQ3Njld
IHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDk0MDAwIG5zDQo+ID4gPiA+IFsgwqAgMTIuNTI1
OTIxXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ2NzAwOCBucw0KPiA+ID4gPiBbIMKgIDE0
LjUxNzM0OF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDI0NzEwMDggbnMNCj4gPiA+ID4gWyDC
oCAxNi41OTM0MDZdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayAyNDQ0MDAwIG5zDQo+ID4gPiA+
IFsgwqAgMTkuNTAxMzQxXSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgMjQ4OTAwOCBucw0KPiA+
ID4gPg0KPiA+ID4gPiBXL28gcGF0Y2g6DQo+ID4gPiA+IFsgwqAgwqA3LjQxMzc1Nl0gc3lzdGVt
X2hlYXBfZG9fdm1hcCB0b29rIDQyNjI2MDAwIG5zDQo+ID4gPiA+IFsgwqAgwqA5LjQyNTYxMF0g
c3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyNTAwOTkyIG5zDQo+ID4gPiA+IFsgwqAgMTEuODEw
ODk4XSBzeXN0ZW1faGVhcF9kb192bWFwIHRvb2sgNDIyMTUwMDggbnMNCj4gPiA+ID4gWyDCoCAx
NC4zMzY3OTBdIHN5c3RlbV9oZWFwX2RvX3ZtYXAgdG9vayA0MjEzNDk5MiBucw0KPiA+ID4gPiBb
IMKgIDE2LjM3Mzg5MF0gc3lzdGVtX2hlYXBfZG9fdm1hcCB0b29rIDQyNzUwMDAwIG5zDQo+ID4g
PiA+DQo+ID4gPg0KPiA+ID4gVGhhdCdzIHF1aXRlIGEgc3BlZWR1cC4NCj4gPiA+DQo+ID4gPiA+
IENjOiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAa2VybmVsLm9yZz4NCj4gPiA+ID4gQ2M6IFVs
YWR6aXNsYXUgUmV6a2kgPHVyZXpraUBnbWFpbC5jb20+DQo+ID4gPiA+IENjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPiA+ID4gPiBDYzogSm9obiBTdHVsdHogPGpz
dHVsdHpAZ29vZ2xlLmNvbT4NCj4gPiA+ID4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2Vy
bmVsLm9yZz4NCj4gPiA+ID4gVGVzdGVkLWJ5OiBUYW5ncXVhbiBaaGVuZyA8emhlbmd0YW5ncXVh
bkBvcHBvLmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQmFycnkgU29uZyA8di1zb25nYmFv
aHVhQG9wcG8uY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqAgKiBkaWZmIHdpdGggcmZjOg0K
PiA+ID4gPiDCoCBNYW55IGNvZGUgcmVmaW5lbWVudHMgYmFzZWQgb24gRGF2aWQncyBzdWdnZXN0
aW9ucywgdGhhbmtzIQ0KPiA+ID4gPiDCoCBSZWZpbmUgY29tbWVudCBhbmQgY2hhbmdlbG9nIGFj
Y29yZGluZyB0byBVbGFkemlzbGF1LCB0aGFua3MhDQo+ID4gPiA+IMKgIHJmYyBsaW5rOg0KPiA+
ID4gPiDCoCBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDI1MTEyMjA5MDM0My44
MTI0My0xLTIxY25iYW9AZ21haWwuY29tLw0KPiA+ID4gPg0KPiA+ID4gPiDCoCBtbS92bWFsbG9j
LmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4g
PiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
DQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFsbG9j
LmMNCj4gPiA+ID4gaW5kZXggNDFkZDAxZTg0MzBjLi44ZDU3Nzc2N2E5ZTUgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL21tL3ZtYWxsb2MuYw0KPiA+ID4gPiArKysgYi9tbS92bWFsbG9jLmMNCj4gPiA+
ID4gQEAgLTY0Miw2ICs2NDIsMjkgQEAgc3RhdGljIGludCB2bWFwX3NtYWxsX3BhZ2VzX3Jhbmdl
X25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwNCj4gPiA+ID4g
wqAgwqAgcmV0dXJuIGVycjsNCj4gPiA+ID4gwqAgfQ0KPiA+ID4gPiArc3RhdGljIGlubGluZSBp
bnQgZ2V0X3ZtYXBfYmF0Y2hfb3JkZXIoc3RydWN0IHBhZ2UgKipwYWdlcywNCj4gPiA+ID4gKyDC
oCDCoCDCoCDCoCDCoCB1bnNpZ25lZCBpbnQgc3RyaWRlLCB1bnNpZ25lZCBpbnQgbWF4X3N0ZXBz
LCB1bnNpZ25lZCBpbnQgaWR4KQ0KPiA+ID4gPiArew0KPiA+ID4gPiArIMKgIGludCBucl9wYWdl
cyA9IDE7DQo+ID4gPg0KPiA+ID4gdW5zaWduZWQgaW50LCBtYXliZQ0KPiANCj4gUmlnaHQNCj4g
DQo+ID4gPg0KPiA+ID4gV2h5IGFyZSB5b3UgaW5pdGlhbGl6aW5nIG5yX3BhZ2VzIHdoZW4geW91
IG92ZXJ3cml0ZSBpdCBiZWxvdz8NCj4gDQo+IFJpZ2h0LCBpbml0aWFsaXppbmcgbnJfcGFnZXMg
Y2FuIGJlIGRyb3BwZWQuDQo+IA0KPiA+ID4NCj4gPiA+ID4gKw0KPiA+ID4gPiArIMKgIC8qDQo+
ID4gPiA+ICsgwqAgwqAqIEN1cnJlbnRseSwgYmF0Y2hpbmcgaXMgb25seSBzdXBwb3J0ZWQgaW4g
dm1hcF9wYWdlc19yYW5nZQ0KPiA+ID4gPiArIMKgIMKgKiB3aGVuIHBhZ2Vfc2hpZnQgPT0gUEFH
RV9TSElGVC4NCj4gPiA+DQo+ID4gPiBJIGRvbid0IGtub3cgdGhlIGNvZGUgc28gcmVhbGl6aW5n
IGhvdyB3ZSBnbyBmcm9tIHBhZ2Vfc2hpZnQgdG8gc3RyaWRlIHRvbw0KPiA+ID4gbWUgYSBzZWNv
bmQuIE1heWJlIG9ubHkgdGFsayBhYm91dCBzdHJpZGUgaGVyZT8NCj4gPiA+DQo+ID4gPiBPVE9I
LCBpcyAic3RyaWRlIiByZWFsbHkgdGhlIHJpZ2h0IHRlcm1pbm9sb2d5Pw0KPiA+ID4NCj4gPiA+
IHdlIGNhbGN1bGF0ZSBpdCBhcw0KPiA+ID4NCj4gPiA+IMKgIMKgIMKgIHN0cmlkZSA9IDFVIDw8
IChwYWdlX3NoaWZ0IC0gUEFHRV9TSElGVCk7DQo+ID4gPg0KPiA+ID4gcGFnZV9zaGlmdCAtIFBB
R0VfU0hJRlQgc2hvdWxkIGdpdmUgdXMgYW4gIm9yZGVyIi4gU28gaXMgdGhpcyBhDQo+ID4gPiAi
Z3JhbnVsYXJpdHkiIGluIG5yX3BhZ2VzPw0KPiANCj4gVGhpcyBpcyB0aGUgY2FzZSB3aGVyZSB2
bWFsbG9jKCkgbWF5IHJlYWxpemUgdGhhdCBpdCBoYXMNCj4gaGlnaC1vcmRlciBwYWdlcyBhbmQg
dGhlcmVmb3JlIGNhbGxzDQo+IHZtYXBfcGFnZXNfcmFuZ2Vfbm9mbHVzaCgpIHdpdGggYSBwYWdl
X3NoaWZ0IGxhcmdlciB0aGFuDQo+IFBBR0VfU0hJRlQuIEZvciB2bWFwKCksIHdlIHRha2UgYSBw
YWdlcyBhcnJheSwgc28NCj4gcGFnZV9zaGlmdCBpcyBhbHdheXMgUEFHRV9TSElGVC4NCj4gDQo+
ID4gPg0KPiA+ID4gQWdhaW4sIEkgZG9uJ3Qga25vdyB0aGlzIGNvZGUsIHNvIHNvcnJ5IGZvciB0
aGUgcXVlc3Rpb24uDQo+ID4gPg0KPiA+IFRvIG1lICJzdHJpZGUiIGFsc28gc291bmRzIHVuY2xl
YXIuDQo+IA0KPiBUaGFua3MsIERhdmlkIGFuZCBVbGFkemlzbGF1LiBPbiBzZWNvbmQgdGhvdWdo
dCwgdGhpcyBzdHJpZGUgbWF5IGJlDQo+IHJlZHVuZGFudCwgYW5kIGl0IHNob3VsZCBiZSBwb3Nz
aWJsZSB0byBkcm9wIGl0IGVudGlyZWx5LiBUaGlzIHJlc3VsdHMNCj4gaW4gdGhlIGNvZGUgYmVs
b3c6DQo+IA0KPiBkaWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIvbW0vdm1hbGxvYy5jDQo+IGlu
ZGV4IDQxZGQwMWU4NDMwYy4uMzk2MmJkY2I0M2U1IDEwMDY0NA0KPiAtLS0gYS9tbS92bWFsbG9j
LmMNCj4gKysrIGIvbW0vdm1hbGxvYy5jDQo+IEBAIC02NDIsNiArNjQyLDIwIEBAIHN0YXRpYyBp
bnQgdm1hcF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5z
aWduZWQgbG9uZyBlbmQsDQo+ICAJcmV0dXJuIGVycjsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGlu
bGluZSBpbnQgZ2V0X3ZtYXBfYmF0Y2hfb3JkZXIoc3RydWN0IHBhZ2UgKipwYWdlcywNCj4gKwkJ
dW5zaWduZWQgaW50IG1heF9zdGVwcywgdW5zaWduZWQgaW50IGlkeCkNCj4gK3sNCj4gKwl1bnNp
Z25lZCBpbnQgbnJfcGFnZXMJID0gY29tcG91bmRfbnIocGFnZXNbaWR4XSk7DQo+ICsNCj4gKwlp
ZiAobnJfcGFnZXMgPT0gMSB8fCBtYXhfc3RlcHMgPCBucl9wYWdlcykNCj4gKwkJcmV0dXJuIDA7
DQo+ICsNCj4gKwlpZiAobnVtX3BhZ2VzX2NvbnRpZ3VvdXMoJnBhZ2VzW2lkeF0sIG5yX3BhZ2Vz
KSA9PSBucl9wYWdlcykNCj4gKwkJcmV0dXJuIGNvbXBvdW5kX29yZGVyKHBhZ2VzW2lkeF0pOw0K
PiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+DQoNCg0KDQo+ICAvKg0KPiAgICogdm1hcF9wYWdl
c19yYW5nZV9ub2ZsdXNoIGlzIHNpbWlsYXIgdG8gdm1hcF9wYWdlc19yYW5nZSwgYnV0IGRvZXMg
bm90DQo+ICAgKiBmbHVzaCBjYWNoZXMuDQo+IEBAIC02NTgsMjAgKzY3MiwzNSBAQCBpbnQgX192
bWFwX3BhZ2VzX3JhbmdlX25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25n
IGVuZCwNCj4gIA0KPiAgCVdBUk5fT04ocGFnZV9zaGlmdCA8IFBBR0VfU0hJRlQpOw0KPiAgDQo+
ICsJLyoNCj4gKwkgKiBGb3Igdm1hcCgpLCB1c2VycyBtYXkgYWxsb2NhdGUgcGFnZXMgZnJvbSBo
aWdoIG9yZGVycyBkb3duIHRvDQo+ICsJICogb3JkZXIgMCwgd2hpbGUgYWx3YXlzIHVzaW5nIFBB
R0VfU0hJRlQgYXMgdGhlIHBhZ2Vfc2hpZnQuDQo+ICsJICogV2UgZmlyc3QgY2hlY2sgd2hldGhl
ciB0aGUgaW5pdGlhbCBwYWdlIGlzIGEgY29tcG91bmQgcGFnZS4gSWYgc28sDQo+ICsJICogdGhl
cmUgbWF5IGJlIGFuIG9wcG9ydHVuaXR5IHRvIGJhdGNoIG11bHRpcGxlIHBhZ2VzIHRvZ2V0aGVy
Lg0KPiArCSAqLw0KPiAgCWlmICghSVNfRU5BQkxFRChDT05GSUdfSEFWRV9BUkNIX0hVR0VfVk1B
TExPQykgfHwNCj4gLQkJCXBhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCkNCj4gKwkJCShwYWdlX3No
aWZ0ID09IFBBR0VfU0hJRlQgJiYgIVBhZ2VDb21wb3VuZChwYWdlc1swXSkpKQ0KPiAgCQlyZXR1
cm4gdm1hcF9zbWFsbF9wYWdlc19yYW5nZV9ub2ZsdXNoKGFkZHIsIGVuZCwgcHJvdCwgcGFnZXMp
Ow0KSG0uLiBJZiBmaXJzdCBmZXcgcGFnZXMgYXJlIG9yZGVyLTAgYW5kIHRoZSByZXN0IGFyZSBj
b21wb3VuZA0KdGhlbiB3ZSBkbyBub3RoaW5nLg0KDQo+ICANCj4gLQlmb3IgKGkgPSAwOyBpIDwg
bnI7IGkgKz0gMVUgPDwgKHBhZ2Vfc2hpZnQgLSBQQUdFX1NISUZUKSkgew0KPiArCWZvciAoaSA9
IDA7IGkgPCBucjsgKSB7DQo+ICsJCXVuc2lnbmVkIGludCBzaGlmdCA9IHBhZ2Vfc2hpZnQ7DQo+
ICAJCWludCBlcnI7DQo+ICANCj4gLQkJZXJyID0gdm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFk
ZHIgKyAoMVVMIDw8IHBhZ2Vfc2hpZnQpLA0KPiArCQkvKg0KPiArCQkgKiBGb3Igdm1hcCgpIGNh
c2VzLCBwYWdlX3NoaWZ0IGlzIGFsd2F5cyBQQUdFX1NISUZULCBldmVuDQo+ICsJCSAqIGlmIHRo
ZSBwYWdlcyBhcmUgcGh5c2ljYWxseSBjb250aWd1b3VzLCB0aGV5IG1heSBzdGlsbA0KPiArCQkg
KiBiZSBtYXBwZWQgaW4gYSBiYXRjaC4NCj4gKwkJICovDQo+ICsJCWlmIChwYWdlX3NoaWZ0ID09
IFBBR0VfU0hJRlQpDQo+ICsJCQlzaGlmdCArPSBnZXRfdm1hcF9iYXRjaF9vcmRlcihwYWdlcywg
bnIgLSBpLCBpKTsNCj4gKwkJZXJyID0gdm1hcF9yYW5nZV9ub2ZsdXNoKGFkZHIsIGFkZHIgKyAo
MVVMIDw8IHNoaWZ0KSwNCj4gIAkJCQkJcGFnZV90b19waHlzKHBhZ2VzW2ldKSwgcHJvdCwNCj4g
LQkJCQkJcGFnZV9zaGlmdCk7DQo+ICsJCQkJCXNoaWZ0KTsNCj4gIAkJaWYgKGVycikNCj4gIAkJ
CXJldHVybiBlcnI7DQo+ICANCj4gLQkJYWRkciArPSAxVUwgPDwgcGFnZV9zaGlmdDsNCj4gKwkJ
YWRkciArPSAxVUwgIDw8IHNoaWZ0Ow0KPiArCQlpICs9IDFVIDw8IHNoaWZ0Ow0KPiAgCX0NCj4g
IA0KPiAgCXJldHVybiAwOw0KPiANCj4gRG9lcyB0aGlzIGxvb2sgY2xlYXJlcj8NCj4gDQpUaGUg
Y29uY2VybiBpcyB3ZSBtaXggaXQgd2l0aCBhIGh1Z2UgcGFnZSBtYXBwaW5nIHBhdGguIElmIHdl
IHdhbnQgdG8gYmF0Y2gNCnYtbWFwcGluZyBmb3IgcGFnZV9zaGlmdCA9PSBQQUdFX1NISUZUIGNh
c2UsIHdoZXJlICJwYWdlcyIgYXJyYXkgbWF5IGNvbnRhaW4gDQpjb21wb3VuZCBwYWdlcyhmb2xp
bykoY29ybmVyIGNhc2UgdG8gbWUpLCBpIHRoaW5rIHdlIHNob3VsZCBzcGxpdCBpdC4NCg0KLS0N
ClVsYWR6aXNsYXUgUmV6a2kNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
