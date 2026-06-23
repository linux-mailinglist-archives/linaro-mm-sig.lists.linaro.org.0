Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hLFvOnRgPWrB2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFAE6C7B4B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:08:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=MBqa7APz;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B257C44664
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:08:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 32D8F3F751
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782220126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=za8b7Tz7sxL5eoB+rct+/JCwXX95wBIIb50tfWhm9/Q=;
	b=MBqa7APz/clg9FmiQTi9Q13PCrXgNhYuZBlANROGJIgsIX1MwN8KHSHQe6fhGoGFVfdzsv
	c5u1mNRYGTaqL8e+Oz03ZfF4uMEK2ge+6bzYc+p9BXM1NnLeqXVtkx0I8yZxvJwE5GSdhk
	wYFRva6xGs5+GnnHm5cPLuFHvY3pCv4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-167-pcLA_EGIN4-VkSaxgpHYTQ-1; Tue, 23 Jun 2026 09:08:43 -0400
X-MC-Unique: pcLA_EGIN4-VkSaxgpHYTQ-1
X-Mimecast-MFC-AGG-ID: pcLA_EGIN4-VkSaxgpHYTQ_1782220122
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-c08306ae1c3so460304866b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 06:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782220122; x=1782824922;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xhV+fQg4GhL+/RFHqkId8dIHE/BQEiUCFDOj1bTyuBw=;
        b=eS2MTgHzjLecYF8EEmSN6RwcrjYe1wyaurG3xHnX9ndIrqFWpMRROfvy1rUQVijUiK
         h0QFi+IahvyjgAFEroShN+GUIspcxcmFFi4G9G/ldIL2SNfzr+vg+ykrbpkp/dU66Yus
         Ra/JYKNaV6aK/uUeOe774spuZL0ii0g7y42ZNKAMJMBQIe98IjXD22t1AfH65lEi+c+N
         u9Eu4EA0kF4phjV2Kj6DbDRlT5t1cXLxz6v5YxoPr4RZPd86sx4DLPZkYRJVIWPCp5E7
         m3UHdAbihsZ19TGtpjllbHDI9B0FkJNI3GHfM+t84l16A+eeMkNq2FNhK6NsHptRfUWc
         GvFA==
X-Forwarded-Encrypted: i=1; AFNElJ+OlNJj4IakFAVbfxv5XdJl9payvG5ZQgMijK0g6xjzM4WvrghhdbLhAdvfaoApoB9q+WEFExJlE0Tdm68z@lists.linaro.org
X-Gm-Message-State: AOJu0Yzl0rEw0xVkjE2qrBDWxY+ggPPZo95b7nIoZ/i4xpxgu/OwddkE
	z409M4/PwrLUpJPtV2w0rBccvPOJqW5rRGeWUzGhyUSb2eJzoYNLNS0WN+MDhcHodAEQpunmm8Z
	X7IeB5yeP7lVMP+NDqeFn8r3D/7rM+k6JJUi9dqMK8kw7tAh+qGdVrHhs11DBdK2z95rG
X-Gm-Gg: AfdE7clnkYtyffha28UGtDKAA7ZxG+JL/bMjolHaCVz1Gw9QI5J1DRYOa/yYlccOu9N
	qgU8amvE47CYPQV+rRGvmMh6uu27weLM64GYIFfdGyR6UlNssABzGlkncqQrsPpUPfr0VUHaOf1
	/Z7puKjTmOgVLNOZ+XG+ecEK69+rk0ZfSxhNtXynzz1g7sdtJe703223QA3oRJhgJ9zrYXTR/hU
	HfAqlM2uF1qgpODCdxviCPCHTAAKHEa0WEJJIxlhdLqFFBeKDHWLxgKbiJ62sZ7OE3l8PEXpMUI
	9kEbiCoF0zjV2Hz+NIXOmB/WJL6kKnCsdhyKFFE0l76FFuqRgWUGu1gM6a2npI5OPvOiGZuSKi+
	rPFxDVR15JSGYgU3l111+ZH2Ulmhu7J9nfdDs
X-Received: by 2002:a17:907:c0f:b0:bfb:13b8:2ac4 with SMTP id a640c23a62f3a-c0c643a9322mr732716266b.13.1782220122301;
        Tue, 23 Jun 2026 06:08:42 -0700 (PDT)
X-Received: by 2002:a17:907:c0f:b0:bfb:13b8:2ac4 with SMTP id a640c23a62f3a-c0c643a9322mr732709866b.13.1782220121644;
        Tue, 23 Jun 2026 06:08:41 -0700 (PDT)
Received: from [10.32.64.70] (nat-pool-muc-t.redhat.com. [149.14.88.26])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c616175c2sm511061966b.61.2026.06.23.06.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:08:40 -0700 (PDT)
Message-ID: <bf8dbb798406303e0fdf75a596e36ab8fb85aa0d.camel@redhat.com>
From: "pstanner@redhat.com" <pstanner@redhat.com>
To: Tvrtko Ursulin <tursulin@igalia.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, =?ISO-8859-1?Q?Andr=E9?= Draszik
	 <andre.draszik@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Tvrtko
 Ursulin <tvrtko.ursulin@igalia.com>
Date: Tue, 23 Jun 2026 15:08:39 +0200
In-Reply-To: <27f54324-94ac-4bbc-ba58-642a314197d7@igalia.com>
References: <20260618-linux-drm_crtc_fix-v1-1-801f29c9853d@linaro.org>
	 <099959fa-3a41-4166-8c10-4e5c2b9fdf19@amd.com>
	 <27f54324-94ac-4bbc-ba58-642a314197d7@igalia.com>
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rz6AaRpqMo9MOdhIAzWXnNFEj7vSvzVpnySADFxwn1M_1782220122
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
X-MailFrom: pstanner@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6N6QZC3KJRZJEUODDYYFBZAG2TC5T46G
X-Message-ID-Hash: 6N6QZC3KJRZJEUODDYYFBZAG2TC5T46G
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: use correct callback in dma_fence_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6N6QZC3KJRZJEUODDYYFBZAG2TC5T46G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	FROM_DN_EQ_ADDR(1.00)[];
	DATE_IN_PAST(1.00)[51];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tursulin@igalia.com,m:christian.koenig@amd.com,m:andre.draszik@linaro.org,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pstanner@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pstanner@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,igalia.com:email,ursulin.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AFAE6C7B4B

T24gVGh1LCAyMDI2LTA2LTE4IGF0IDIwOjMwICswMjAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gDQo+IE9uIDE4LzA2LzIwMjYgMTQ6NDYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+ID4g
T24gNi8xOC8yNiAxNDowMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6DQo+ID4gPiBkbWFfZmVuY2Vf
dGltZWxpbmVfbmFtZSgpIGlzIGEgd3JhcHBlciBhcm91bmQNCj4gPiA+IGRtYV9mZW5jZV9vcHM6
OmdldF90aW1lbGluZV9uYW1lKCkuIFNpbmNlIHRoZSBibGFtZWQgY29tbWl0IGJlbG93LCBpdA0K
PiA+ID4gY2FsbHMgYW4gaW5jb3JyZWN0IGNhbGxiYWNrLg0KPiA+ID4gDQo+ID4gPiBVcGRhdGUg
aXQgdG8gcmVzdG9yZSBmdW5jdGlvbmFsaXR5IGJ5IGNhbGxpbmcgdGhlIGludGVuZGVkIGNhbGxi
YWNrLg0KPiA+ID4gDQo+ID4gPiBGaXhlczogNjI5MTg1NDJiN2JmICgiZG1hLWZlbmNlOiBGaXgg
c3BhcnNlIHdhcm5pbmdzIGR1ZSBfX3JjdSBhbm5vdGF0aW9ucyIpDQo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPg0KDQpSZXZpZXdl
ZC1ieTogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4NCg0KPiA+IEknbSBsaWtl
IDk5JSBzdXJlIHdlIGhhZCB0aGF0IGFscmVhZHkgZml4ZWQgd2Vla3MgYWdvLCBidXQgc29tZWhv
dyBpdCBsb29rcyBsaWtlIHRoYXQgd2FzIG5ldmVyIG1lcmdlZCB0byBkcm0tbWlzYy1maXhlcy4N
Cg0KSSdtIGFsc28gdmVyeSBzdXJlIHRoYXQgd2UgaGFkIHNob3QgdGhhdCBidWcgZG93biBub3Qg
dG9vIGxvbmcgaW4gdGhlDQpwYXN0Lg0KDQo+ID4gDQo+ID4gQW55d2F5IFJldmlld2VkLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IA0KPiBJIHdhcyBh
bHNvIHBlcnBsZXhlZCBhbmQgdG9vayBtZSBzb21lIGRpZ2dpbmcgdG8gcmVhbGlzZSB3aGF0IGhh
ZCBoYXBwZW5lZC4NCj4gDQo+IFRoZSBjb3B5LWFuZC1wYXN0ZSBidWcgd2FzIGluZGVlZCBvcmln
aW5hbGx5IGZpeGVkIGluOg0KPiANCj4gY29tbWl0IDAzMzU1OTQ3M2RkM2I1NTU1OGI1MzVhYTM3
Yjg4NDhjMjA3YjVjYmINCj4gQXV0aG9yOsKgIMKgIMKgQWthc2ggR29lbCA8YWthc2guZ29lbEBh
cm0uY29tPg0KPiBBdXRob3JEYXRlOiBUdWUgT2N0IDIxIDE3OjA5OjUxIDIwMjUgKzAxMDANCj4g
Q29tbWl0OsKgIMKgIMKgVHZydGtvIFVyc3VsaW4gPHR1cnN1bGluQHVyc3VsaW4ubmV0Pg0KPiBD
b21taXREYXRlOiBGcmkgT2N0IDI0IDE2OjU2OjM3IDIwMjUgKzAxMDANCj4gDQo+IMKgwqAgwqAg
ZG1hLWZlbmNlOiBGaXggc2FmZSBhY2Nlc3Mgd3JhcHBlciB0byBjYWxsIHRpbWVsaW5lIG5hbWUg
bWV0aG9kDQo+IA0KPiANCj4gQnV0IHdhYWF5IGJlZm9yZSB0aGF0IEkgc2VudCBhIGZpeCBmb3Ig
c29tZXRoaW5nIGVsc2Ugd2hpY2ggdG91Y2hlZCANCj4gdGhvc2UgbGluZXMgbm90IG5vdGljaW5n
IHRoZSBjb3B5LWFuZC1wYXN0ZSwgZml4aW5nIGEgZGlmZmVyZW50IGlzc3VlLiANCj4gVGhhdCBv
bmUgaG93ZXZlciB3YXMgbm90IG1lcmdlZCB1bnRpbCBlYXJsaWVyIHRoaXMgeWVhcjoNCj4gDQo+
IGNvbW1pdCA2MjkxODU0MmI3YmYwODg2MGE2MGViYmRlNzY1NDQ4NmUwYWMwNzc2DQo+IEF1dGhv
cjrCoCDCoCDCoFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KPiBB
dXRob3JEYXRlOiBNb24gSnVuIDE2IDE2OjU5OjUyIDIwMjUgKzAxMDANCj4gQ29tbWl0OsKgIMKg
IMKgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiBDb21taXRE
YXRlOiBNb24gRmViIDkgMTQ6MDU6MjAgMjAyNiArMDEwMA0KPiANCj4gwqDCoCDCoCBkbWEtZmVu
Y2U6IEZpeCBzcGFyc2Ugd2FybmluZ3MgZHVlIF9fcmN1IGFubm90YXRpb25zDQo+IA0KPiBOb3Rp
Y2UgdGhlIGF1dGhvcmVkIHZzIGNvbW1pdGVkIGRhdGVzLg0KPiANCj4gSSBndWVzcyBpdCB3YXMg
YSBzaWxlbnQgY29uZmxpY3Qgd2hpY2ggb3Zlcndyb3RlIHRoZSBlYXJsaWVyIGZpeCBhbmQgDQo+
IHJlc3RvcmUgdGhlIGNvcHktYW5kLXBhc3RlIGJ1Zy4NCg0Kc2lsZW50IGNvbmZsaWN0PyBJZiB0
aGF0IGNhbiBoYXBwZW4gd2l0aCBvdXIgZ2l0IHdvcmtmbG93LCBob3cgaXMgaXQNCnRoYXQgd2Ug
ZG9uJ3Qgc2VlIHRoaW5ncyBsaWtlIHRoYXQgbW9yZSBvZnRlbj8NCg0KDQpQLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
