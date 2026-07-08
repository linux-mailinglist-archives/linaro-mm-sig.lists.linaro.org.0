Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uzlBMdJQTmqFKgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 15:29:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 495C0726CCE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 15:29:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=SJ+FOWX4;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08B9941189
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2026 13:29:53 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 4FA1F40AE4
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 13:29:43 +0000 (UTC)
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA512)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4gwJq831JYzMlGX;
	Wed, 08 Jul 2026 15:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1783517380; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u+QzoStC3POLvanG8ZLxpgomra4Mq3Lf3oEAWOgFql8=;
	b=SJ+FOWX4vFmAla8qj17/+0Pkuugs68BdDuOZbdI9m4etSGdWRvIHqksjIzlS628SASzyNR
	KUPuAEN2F+d2nP5dm5oJmToHAx6/rGkovRSSvuvYNJw4KEipQgNs6ypGI36iGA3OT+v0zP
	ckLJYh2oyXgqaptLNEQ6df75tzywBssmzdoFvUPiqIR80LQnZMii7jWW8fQt2GW5sMbKUQ
	rz5gVk4GXSyyi3WPj18hBS6neyBkRme4/3JrBS4lnJ1LpMb/A5KTfh1XTz/tIDI5KPpgL3
	MSR39yvd7shKThIgh60krfYf4m9FbcKLfIFGGL9Y9R/XmzqC2qTe6QCVdPZi3w==
Message-ID: <099ab4b0fd40c476fcb5fa804800794f11758416.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?ISO-8859-1?Q?Bj=F6rn?= Roy Baron	 <bjorn3_gh@protonmail.com>, Benno
 Lossin <lossin@kernel.org>, Andreas Hindborg	 <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross	 <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Sumit Semwal	
 <sumit.semwal@linaro.org>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Daniel Almeida <daniel.almeida@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Asahi Lina
 <lina+kernel@asahilina.net>, Burak Emir <bqe@google.com>,  Lorenzo Stoakes	
 <ljs@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Alexandre Courbot
	 <acourbot@nvidia.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Tamir
 Duberstein <tamird@kernel.org>, Mirko Adzic <adzicmirko97@gmail.com>,
 Alistair Francis	 <alistair.francis@wdc.com>, Onur =?ISO-8859-1?Q?=D6zkan?=
 <work@onurozkan.dev>,  Shankari Anand <shankari.ak0208@gmail.com>
Date: Wed, 08 Jul 2026 15:29:29 +0200
In-Reply-To: <20260703073141.3962604-6-phasta@kernel.org>
References: <20260703073141.3962604-2-phasta@kernel.org>
	 <20260703073141.3962604-6-phasta@kernel.org>
MIME-Version: 1.0
X-MBO-RS-ID: 58600b92efd2db828a6
X-MBO-RS-META: jonfcbxufdzn7z77mwmxrqxzisg6c981
X-Spamd-Bar: +
X-Spam-Level: *
Message-ID-Hash: 7E24GVFEP7CFHGSX4I3I6HR3MA52UMMG
X-Message-ID-Hash: 7E24GVFEP7CFHGSX4I3I6HR3MA52UMMG
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/5] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7E24GVFEP7CFHGSX4I3I6HR3MA52UMMG/>
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
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina+kernel@asahilina.net,m:bqe@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:acourbot@nvidia.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:work@onurozkan.dev,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,collabora.com,linuxfoundation.org,asahilina.net,nvidia.com,gmail.com,wdc.com,onurozkan.dev];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 495C0726CCE

T24gRnJpLCAyMDI2LTA3LTAzIGF0IDA5OjMxICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6
DQo+IA0KPiArLy8gTmVjZXNzYXJ5IHRvIGd1YXJhbnRlZSB0aGF0IGBpbm5lcmAgYWx3YXlzIGNv
bWVzIGZpcnN0IGFuZCBjYW4gYmUgZnJlZWQgYnkgQy4NCj4gKy8vIEFsc28gdXNlZnVsIGZvciB1
c2luZyBjYXN0cyBpbnN0ZWFkIG9mIGNvbnRhaW5lcl9vZigpLg0KPiArI1tyZXByKEMpXQ0KPiAr
I1twaW5fZGF0YV0NCj4gK3N0cnVjdCBEcml2ZXJGZW5jZURhdGE8J2EsIFQ6IFNlbmQgKyBTeW5j
ICsgRmVuY2VDdHhPcHM+IHsNCj4gK8KgwqDCoCAjW3Bpbl0NCj4gK8KgwqDCoCAvLy8gVGhlIGlu
bmVyIGZlbmNlLg0KPiArwqDCoMKgIC8vIE11c3QgYWx3YXlzIGJlIHRoZSBmaXJzdCBtZW1iZXIg
c28gdGhhdCB1bnNhZmUgY2FzdGluZyB3b3JrczsgYnV0IGFsc28NCj4gK8KgwqDCoCAvLyBuZWNl
c3Nhcnkgc28gdGhhdCB0aGUgQyBiYWNrZW5kIGNhbiBmcmVlIHRoZSBhbGxvY2F0aW9uIChjb21p
bmcgZnJvbSBvdXINCj4gK8KgwqDCoCAvLyBSdXN0IGNvZGUpIHdpdGgga2ZyZWVfcmN1KCkuDQo+
ICvCoMKgwqAgaW5uZXI6IEZlbmNlLA0KPiArwqDCoMKgIC8vLyBDYWxsYmFjayBoZWFkIGZvciBk
cm9wcGluZyB0aGlzIGluIGEgZGVmZXJyZWQgbWFubmVyIHRocm91Z2ggUkNVLg0KPiArwqDCoMKg
IHJjdV9oZWFkOiBiaW5kaW5nczo6Y2FsbGJhY2tfaGVhZCwNCj4gK8KgwqDCoCAvLy8gUmVmZXJl
bmNlIHRvIGFjY2VzcyB0aGUgRmVuY2VDdHguIFVzZWZ1bCBmb3Igb2J0YWluaW5nIG5hbWUgcGFy
YW1ldGVycy4NCj4gK8KgwqDCoCBmY3R4OiAmJ2EgRmVuY2VDdHg8VD4sDQo+ICvCoMKgwqAgLy8v
IFRoZSBBUEkgdXNlcidzIGRhdGEuIFRoaXMgbXVzdCBlaXRoZXIgbm90IG5lZWQgZHJvcCwgb3Ig
bXVzdCBkZWxheSBpdHMNCj4gK8KgwqDCoCAvLy8gZHJvcCBieSBhIGdyYWNlIHBlcmlvZC4gSXQg
aXMgZXNzZW50aWFsIHRoYXQgdGhlIGRhdGEgb25seSBwZXJmb3Jtcw0KPiArwqDCoMKgIC8vLyBv
cGVyYXRpb25zIGxlZ2FsIGluIGF0b21pYyBjb250ZXh0IGluIGl0cyBbYERyb3BgXSBpbXBsZW1l
bnRhdGlvbi4NCj4gK8KgwqDCoCAjW3Bpbl0NCj4gK8KgwqDCoCBkYXRhOiBUOjpGZW5jZURhdGFU
eXBlLA0KPiArfQ0KPiArDQo+ICtwdWIgc3RydWN0IERyaXZlckZlbmNlPCdhLCBUOiBTZW5kICsg
U3luYyArIEZlbmNlQ3R4T3BzPiB7DQo+ICvCoMKgwqAgLy8vIFRoZSBhY3R1YWwgY29udGVudCBv
ZiB0aGUgZmVuY2UuIExpdmVzIGluIGEgcmF3IHBvaW50ZXIgc28gdGhhdCBpdHMNCj4gK8KgwqDC
oCAvLy8gbWVtb3J5IGNhbiBiZSBtYW5hZ2VkIGluZGVwZW5kZW50bHkuIFZhbGlkIHVudGlsIGJv
dGggdGhlIFtgRHJpdmVyRmVuY2VgXQ0KPiArwqDCoMKgIC8vLyBhbmQgYWxsIGFzc29jaWF0ZWQg
W2BGZW5jZWBdcyBoYXZlIGRpc2FwcGVhcmVkLg0KPiArwqDCoMKgIGRhdGE6IE5vbk51bGw8RHJp
dmVyRmVuY2VEYXRhPCdhLCBUPj4sDQo+ICt9DQo+ICsNCj4gKy8vLyBBIHByZS1wcmVwYXJlZCBE
TUEgZmVuY2UsIGNhcnJ5aW5nIHRoZSB1c2VyJ3MgZGF0YSBhbmQgdGhlIG1lbW9yeSBpdCBhbmQg
dGhlDQo+ICsvLy8gZmVuY2UgcmVzaWRlIGluLiBPbmx5IHVzZWZ1bCBmb3IgY3JlYXRpbmcgYSBb
YERyaXZlckZlbmNlYF0uIFNwbGl0dGluZw0KPiArLy8vIGFsbG9jYXRpb24gYW5kIGZ1bGwgaW5p
dGlhbGl6YXRpb24gaXMgbmVjZXNzYXJ5IGJlY2F1c2UgZmVuY2VzIGNhbm5vdCBiZQ0KPiArLy8v
IGFsbG9jYXRlZCBkeW5hbWljYWxseSBpbiBzb21lIGNpcmN1bXN0YW5jZXMgKGRlYWRsb2NrKS4N
Cj4gK3B1YiBzdHJ1Y3QgRHJpdmVyRmVuY2VBbGxvY2F0aW9uPCdhLCBUOiBTZW5kICsgU3luYyAr
IEZlbmNlQ3R4T3BzPiB7DQo+ICvCoMKgwqAgLy8vIFRoZSBtZW1vcnkgZm9yIHRoZSBhY3R1YWwg
Y29udGVudCBvZiB0aGUgZmVuY2UuDQo+ICvCoMKgwqAgLy8vIEhhbmRlZCBvdmVyIHRvIGEgW2BE
cml2ZXJGZW5jZWBdLCBvciBkZWFsbG9jYXRlZCBvbmNlIHRoZQ0KPiArwqDCoMKgIC8vLyBbYERy
aXZlckZlbmNlQWxsb2NhdGlvbmBdIGRyb3BzLg0KPiArwqDCoMKgIGRhdGE6IEtCb3g8RHJpdmVy
RmVuY2VEYXRhPCdhLCBUPj4sDQo+ICt9DQoNCk9uZSBpc3N1ZSB0aGF0IEknbSBvbmx5IGRpc2Nv
dmVyaW5nIGp1c3Qgbm93IGlzIHRoYXQgdGhlIHJlcXVlc3Qgb2YNCmRlcml2aW5nIHRoZSBEcml2
ZXJGZW5jZSdzIGdlbmVyaWMgdGhyb3VnaCB0aGUgRmVuY2VDdHgncyBnZW5lcmljDQpjYXVzZXMg
aXNzdWVzIGxpa2UgdGhpczoNCg0KDQpzdHJ1Y3QgRHJpdmVyRm9vIHsNCiAgZjogRHJpdmVyRmVu
Y2U8KCk+LCAvLyBlcnJvcjogbXVzdCBpbXBsZW1lbnQgRmVuY2VDdHhPcHMNCn0NCg0KSU9XLCBh
bGwgRHJpdmVyRmVuY2U6OmRhdGEgbm93IG11c3QgaW1wbGVtZW50IHRoZSB0cmFpdC4gV2hpY2gg
aXMNCm9idmlvdXNseSBub3Qgd2hhdCB3ZSB3YW50Lg0KDQpCdXQgSSBjYW5ub3QgZ2V0IGVhc2ls
eSBnZXQgcmlkIG9mIGl0LiBTZWUgRHJpdmVyRmVuY2VEYXRhLg0KDQpAQm9yaXM6IERvIHlvdSBo
YXZlIGEgc3VnZ2VzdGlvbj8gT3RoZXJ3aXNlIEknZCB3YW50IHRvIGRlZmF1bHQgYmFjayB0bw0K
UGhhbnRvbURhdGEsIHdoaWNoIEkgc3RpbGwgYmVsaWV2ZSBpcyBjbGVhbmVyLg0KDQoNClAuDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
