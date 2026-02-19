Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK24INwS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7B411FC1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:48:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA518404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:26 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 37A3B3F758
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 09:45:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=BrbJ8Zr4;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771494330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jc3i9FwjGQs8rH6ZGdIFq1/g5A3pmIExt0aTpd8WwbE=;
	b=BrbJ8Zr4ZyBOAsM4JHRsofZYCEJgg5i6KsmfYyk2twEZMvryJZX6IAtrnJasfUn90CvJ0W
	vdWukzitL93oQ0gB5gtnDvGpPhyzNwlp8Vf++uS6+ON1LFLwda93XgVxMTgh5NN11zCWlx
	N7WEfmw3EmhxJlidfWx01IUTPHAE2MI=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-287-ul3kepTXOXmaroVS1T1VfQ-1; Thu, 19 Feb 2026 04:45:29 -0500
X-MC-Unique: ul3kepTXOXmaroVS1T1VfQ-1
X-Mimecast-MFC-AGG-ID: ul3kepTXOXmaroVS1T1VfQ_1771494329
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7980013eaf9so11349467b3.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 01:45:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771494329; x=1772099129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jc3i9FwjGQs8rH6ZGdIFq1/g5A3pmIExt0aTpd8WwbE=;
        b=CNRnVTVyHU/uZWevEQikGwGztMgPmNr0Bz5E1qosM7jjP3KRGFvt5lyftivYIuDyui
         ycznxWYdjn4bKdXbGqO61dFb3zEpmzE6khru9d6+x+oRO4hLJ9b9MHNu29wXCFPDvZls
         0tUIEyFi+ngdOVhc6OFaA2MtRWFgH7ZztU7KDMSRndZJvaMOAVLO9Px+YTH+gsmeF+ag
         Or0aQM5qib0DesBOr8RYXRIlq6hyqnpU5VAYB/JFIuT1FGVX/FmRMCCR3VNwm/4sIuou
         wWI98lRbOPgiKpKptOHSQP6oHSdiRju35HnPgFCCi+0YurtVpDhV6ULU5/Bz3GCd+Ni0
         Rtcw==
X-Forwarded-Encrypted: i=1; AJvYcCW/TNaEy8Wq3lqVsuWsNnMcI/HAQC9WjC7o8JzCrOYmzwNupQ2/lj3R8CPwxKk5yWo0gecqlRNcrR1DkQXs@lists.linaro.org
X-Gm-Message-State: AOJu0YwKTItjQFldJsxcl2Lyq0Q9ggzN3JTaB+Q3X7MG2OK6DFyhC1pn
	e6uk/MCTJu+dKQDEUoQcXJzu7U+Bq1QzPWWd/q3ZHhHmVGwRq5OvYrUSNA266+S1rO9Vt8B62gu
	Va9bTCkuZpoQXrhqnwuU9ByzgrLuC9cqmJPXjDi+KSb3y1DskYn4rPFCEz8bcEdC4ddA4ysobP/
	7YiFTbO9gwzdB5+rdeTbRYqWYJtEWjgtcmFybp9IFZfgc=
X-Gm-Gg: AZuq6aJeCQNXYaITzWvfvozh0JGG7Hyi5rrmrSNQfKXoq0uaxm2OUigOQjq8YO0ZQQn
	Rr8Djd5uIox7nX9AVKwnDuI4fQgCHhiunJHvJoHC+GMUXsJmABjjZVpNwZgnw0hpraolmJNtdNJ
	hjkRdpE7VT6YVyx0fbaq0KuHwJQTos7iVNelXhLIQYL6agyV6egpP4p5BsJwKObDb6wGwbln5cI
	w==
X-Received: by 2002:a53:ac83:0:b0:64a:cece:95f0 with SMTP id 956f58d0204a3-64c21b189b8mr12656980d50.61.1771494329168;
        Thu, 19 Feb 2026 01:45:29 -0800 (PST)
X-Received: by 2002:a53:ac83:0:b0:64a:cece:95f0 with SMTP id
 956f58d0204a3-64c21b189b8mr12656956d50.61.1771494328829; Thu, 19 Feb 2026
 01:45:28 -0800 (PST)
MIME-Version: 1.0
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
In-Reply-To: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 19 Feb 2026 10:45:17 +0100
X-Gm-Features: AaiRm51_qfw3XQOH44zsawVMk4430XcLLbmTSpOFr53O7yUQLt26G4MawVh9oqo
Message-ID: <CADSE00+6Jnv_R69nrWdakX2StNK058ksxva48z=ZnwT=Zr3UOQ@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _TtLXH4Sk_cAPX8jcLJNuVNRfwVIqPwHRFl98_6SZI0_1771494329
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UQTUJW4OPUVZOIMGTCPSLMQ4U6ZB4RKR
X-Message-ID-Hash: UQTUJW4OPUVZOIMGTCPSLMQ4U6ZB4RKR
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:33 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQTUJW4OPUVZOIMGTCPSLMQ4U6ZB4RKR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1351];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 1FE7B411FC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBGZWIgMTgsIDIwMjYgYXQgNjoxNeKAr1BNIEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRl
QHJlZGhhdC5jb20+IHdyb3RlOg0KPg0KPiBBbiBlYXJsaWVyIHNlcmllc1sxXSBmcm9tIE1heGlt
ZSBpbnRyb2R1Y2VkIGRtZW0gdG8gdGhlIGNtYSBhbGxvY2F0b3IgaW4NCj4gYW4gYXR0ZW1wdCB0
byB1c2UgaXQgZ2VuZXJhbGx5IGZvciBkbWEtYnVmLiBSZXN0YXJ0IGZyb20gdGhlcmUgYW5kIGFw
cGx5DQo+IHRoZSBjaGFyZ2UgaW4gdGhlIG5hcnJvd2VyIGNvbnRleHQgb2YgdGhlIENNQSBkbWEt
YnVmIGhlYXAgaW5zdGVhZC4NCj4NCj4gSW4gbGluZSB3aXRoIGludHJvZHVjaW5nIGNncm91cCB0
byB0aGUgc3lzdGVtIGhlYXBbMl0sIHRoaXMgYmVoYXZpb3IgaXMNCj4gZW5hYmxlZCBiYXNlZCBv
biBkbWFfaGVhcC5tZW1fYWNjb3VudGluZywgZGlzYWJsZWQgYnkgZGVmYXVsdC4NCj4NCj4gZG1l
bSBpcyBjaG9zZW4gZm9yIENNQSBoZWFwcyBhcyBpdCBhbGxvd3MgbGltaXRzIHRvIGJlIHNldCBm
b3IgZWFjaA0KPiByZWdpb24gYmFja2luZyBlYWNoIGhlYXAuIFRoZSBjaGFyZ2UgaXMgb25seSBw
dXQgaW4gdGhlIGRtYS1idWYgaGVhcCBmb3INCj4gbm93IGFzIGl0IGd1YXJhbnRpZXMgaXQgY2Fu
IGJlIGFjY291bnRlZCBhZ2FpbnN0IGEgdXNlcnNwYWNlIHByb2Nlc3MNCj4gdGhhdCByZXF1ZXN0
ZWQgdGhlIGFsbG9jYXRpb24uDQo+DQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNTAzMTAtZG1lbS1jZ3JvdXBzLXYxLTAtMjk4NGMxYmM5MzEyQGtlcm5lbC5vcmcvDQo+IFsy
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAxMTYtZG1hYnVmLWhlYXAtc3lzdGVt
LW1lbWNnLXYzLTAtZWNjNmI2MmNjNDQ2QHJlZGhhdC5jb20vDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+DQoNClRlc3RlZC1ieTogQWxiZXJ0
IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0KDQpJIHRlc3RlZCB0aGUgc2VyaWVzIHdpdGgg
YSBGZWRvcmEgVk0sIHNldHRpbmcgdGhlIGdsb2JhbCB1c2VyLnNsaWNlDQpkbWVtLm1heCB2YWx1
ZSBhbmQgdGhlbiB0cnlpbmcgdG8gYWxsb2NhdGUgYnVmZmVycyBvZiBkaWZmZXJlbnQgc2l6ZXMN
CndpdGggRE1BX0hFQVBfSU9DVExfQUxMT0MuIEV4Y2VlZGluZyB0aGUgbWF4IGxpbWl0IHJlc3Vs
dHMgaW4NCidSZXNvdXJjZSB0ZW1wb3JhcmlseSB1bmF2YWlsYWJsZScgYW5kIHRoZSBhbGxvY2F0
aW9uIGZhaWxzLg0KDQpCUiwNCkFsYmVydA0KDQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAt
IFJlYmFzZSBvbiBNYXhpbWUncyBpbnRyb2R1Y3Rpb24gb2YgZG1lbSB0byB0aGUgY21hIGFsbG9j
YXRvcjoNCj4gICBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAzMTAtZG1lbS1jZ3Jv
dXBzLXYxLTAtMjk4NGMxYmM5MzEyQGtlcm5lbC5vcmcvDQo+IC0gUmVtb3ZlIHRoZSBkbWVtIHJl
Z2lvbiByZWdpc3RyYXRpb24gZnJvbSB0aGUgY21hIGRtYS1idWYgaGVhcA0KPiAtIFJlbW92ZSB0
aGUgbWlzcGxhY2VkIGxvZ2ljIGZvciB0aGUgZGVmYXVsdCByZWdpb24uDQo+IC0gTGluayB0byB2
MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDEzMC1kbWFidWYtaGVhcC1jbWEtZG1l
bS12MS0xLTM2NDdlYTk5M2U5OUByZWRoYXQuY29tDQo+DQo+IC0tLQ0KPiBFcmljIENoYW51ZGV0
ICgxKToNCj4gICAgICAgZG1hLWJ1ZjogaGVhcHM6IGNtYTogY2hhcmdlIGVhY2ggY21hIGhlYXAn
cyBkbWVtDQo+DQo+IE1heGltZSBSaXBhcmQgKDIpOg0KPiAgICAgICBjbWE6IFJlZ2lzdGVyIGRt
ZW0gcmVnaW9uIGZvciBlYWNoIGNtYSByZWdpb24NCj4gICAgICAgY21hOiBQcm92aWRlIGFjY2Vz
c29yIHRvIGNtYSBkbWVtIHJlZ2lvbg0KPg0KPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9o
ZWFwLmMgfCAxNSArKysrKysrKysrKysrKy0NCj4gIGluY2x1ZGUvbGludXgvY21hLmggICAgICAg
ICAgICAgIHwgIDkgKysrKysrKysrDQo+ICBtbS9jbWEuYyAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIwICsrKysrKysrKysrKysrKysrKystDQo+ICBtbS9jbWEuaCAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAzICsrKw0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDk0OGUxOTVkZmFhNTZlNDhlYWJk
YTU5MWY5NzYzMDUwMmZmN2UyN2UNCj4gY2hhbmdlLWlkOiAyMDI2MDEyOC1kbWFidWYtaGVhcC1j
bWEtZG1lbS1mNDEyMGEyZGY0YTgNCj4NCj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBFcmljIENo
YW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
