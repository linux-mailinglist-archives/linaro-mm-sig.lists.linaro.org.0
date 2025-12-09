Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yO2bHLkD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5B9411260
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47E5044BD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:52 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id D2E1F3F828
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Dec 2025 12:24:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of ryan.roberts@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=ryan.roberts@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B4FF1691;
	Tue,  9 Dec 2025 04:24:22 -0800 (PST)
Received: from [10.1.36.174] (unknown [10.1.36.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 595E93F740;
	Tue,  9 Dec 2025 04:24:27 -0800 (PST)
Message-ID: <081a44f5-9400-4c62-8760-6896011fa3e2@arm.com>
Date: Tue, 9 Dec 2025 12:24:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Barry Song <21cnbao@gmail.com>
References: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com>
 <CAGsJ_4w-XtJ8zzc8H4OwW4XV21T8FWGxeoMnfAxmAgBhzrvxWQ@mail.gmail.com>
 <6f891b70-7ee9-44a3-92a1-bbeb4d2b9fee@arm.com>
 <CAGsJ_4xb--mwsPHVFXzcpnZ29Wh8N-OTZNyNVW2CZd-U00A_ww@mail.gmail.com>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <CAGsJ_4xb--mwsPHVFXzcpnZ29Wh8N-OTZNyNVW2CZd-U00A_ww@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: ryan.roberts@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 77YDLUB5EL4J6Y5RZXFDLJEST5HGHUQH
X-Message-ID-Hash: 77YDLUB5EL4J6Y5RZXFDLJEST5HGHUQH
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:41 +0000
CC: gao xu <gaoxu2@honor.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "surenb@google.com" <surenb@google.com>, zhouxiaolong <zhouxiaolong9@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/77YDLUB5EL4J6Y5RZXFDLJEST5HGHUQH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3075];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ryan.roberts@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[honor.com:email,arm.com:mid,arm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2C5B9411260
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMDkvMTIvMjAyNSAxMTozNywgQmFycnkgU29uZyB3cm90ZToNCj4gT24gTW9uLCBEZWMgOCwg
MjAyNSBhdCA2OjM44oCvUE0gUnlhbiBSb2JlcnRzIDxyeWFuLnJvYmVydHNAYXJtLmNvbT4gd3Jv
dGU6DQo+Pg0KPj4gT24gMDgvMTIvMjAyNSAwOTo1MiwgQmFycnkgU29uZyB3cm90ZToNCj4+PiBP
biBNb24sIERlYyA4LCAyMDI1IGF0IDU6NDHigK9QTSBnYW8geHUgPGdhb3h1MkBob25vci5jb20+
IHdyb3RlOg0KPj4+Pg0KPj4+PiBjb21taXQgMDRjN2FkYjU4NzFhICgiZG1hLWJ1Zjogc3lzdGVt
X2hlYXA6IHVzZSBsYXJnZXIgY29udGlndW91cyBtYXBwaW5ncw0KPj4+PiBpbnN0ZWFkIG9mIHBl
ci1wYWdlIG1tYXAiKSBmYWNpbGl0YXRlcyB0aGUgdXNlIG9mIFBURV9DT05ULiBUaGUgc3lzdGVt
X2hlYXANCj4+Pj4gYWxsb2NhdGVzIHBhZ2VzIG9mIG9yZGVyIDQgYW5kIDggdGhhdCBtZWV0IHRo
ZSBhbGlnbm1lbnQgcmVxdWlyZW1lbnRzIGZvcg0KPj4+PiBQVEVfQ09OVC4gZW5hYmxpbmcgUFRF
X0NPTlQgZm9yIGxhcmdlciBjb250aWd1b3VzIG1hcHBpbmdzLg0KPj4+DQo+Pj4gVW5mb3J0dW5h
dGVseSwgd2UgZG9uJ3QgaGF2ZSBwdGVfY29udCBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFu
DQo+Pj4gQUFyY2g2NC4gT24gdGhlIG90aGVyIGhhbmQsIEFBcmNoNjQgaXNuJ3QgYXV0b21hdGlj
YWxseSBtYXBwaW5nDQo+Pj4gY29udF9wdGUgZm9yIG1tYXAuIEl0IG1pZ2h0IGJlIGJldHRlciBp
ZiB0aGlzIHdlcmUgZG9uZQ0KPj4+IGF1dG9tYXRpY2FsbHkgYnkgdGhlIEFSTSBjb2RlLg0KPj4N
Cj4+IFllcyBpbmRlZWQ7IENPTlRfUFRFX01BU0sgYW5kIFBURV9DT05UIGFyZSBhcm02NC1zcGVj
aWZpYyBtYWNyb3MgdGhhdCBjYW5ub3QgYmUNCj4+IHVzZWQgb3V0c2lkZSBvZiB0aGUgYXJtNjQg
YXJjaCBjb2RlLg0KPj4NCj4+Pg0KPj4+IFJ5YW4oQ2NlZCkgaXMgdGhlIGV4cGVydCBvbiBhdXRv
bWF0aWNhbGx5IHNldHRpbmcgY29udF9wdGUgZm9yDQo+Pj4gY29udGlndW91cyBtYXBwaW5nLCBz
byBsZXQncyBhc2sgZm9yIHNvbWUgYWR2aWNlIGZyb20gUnlhbi4NCj4+DQo+PiBhcm02NCBhcmNo
IGNvZGUgd2lsbCBhdXRvbWF0aWNhbGx5IGFuZCB0cmFuc3BhcmVudGx5IGFwcGx5IFBURV9DT05U
IHdoZW5ldmVyIGl0DQo+PiBkZXRlY3RzIHN1aXRhYmxlIGNvbmRpdGlvbnMuIFRob3NlIHN1aXRh
YmxlIGNvbmRpdGlvbnMgaW5jbHVkZToNCj4+DQo+PiAgIC0gcGh5c2ljYWxseSBjb250aWd1b3Vz
IGJsb2NrIG9mIDY0SywgYWxpZ25lZCB0byA2NEsNCj4+ICAgLSB2aXJ0dWFsbHkgY29udGlndW91
cyBibG9jayBvZiA2NEssIGFsaWduZWQgdG8gNjRLDQo+PiAgIC0gNjRLIGJsb2NrIGhhcyB0aGUg
c2FtZSBhY2Nlc3MgcGVybWlzc2lvbnMNCj4+ICAgLSA2NEsgYmxvY2sgYWxsIGJlbG9uZ3MgdG8g
dGhlIHNhbWUgZm9saW8NCj4+ICAgLSBub3QgYSBzcGVjaWFsIG1hcHBpbmcNCj4+DQo+PiBUaGUg
bGFzdCAyIHJlcXVpcmVtZW50cyBhcmUgdGhlIHRyaWNreSBvbmVzIGhlcmU6IFdlIHJlcXVpcmUg
dGhhdCBldmVyeSBwYWdlIGluDQo+PiB0aGUgYmxvY2sgYmVsb25ncyB0byB0aGUgc2FtZSBmb2xp
byBiZWNhdXNlIGEgY29udGlnb3VzIG1hcHBpbmcgb25seSBtYWludGFpbnMgYQ0KPj4gc2luZ2xl
IGFjY2VzcyBhbmQgZGlydHkgYml0IGZvciB0aGUgd2hvbGUgNjRLIGJsb2NrLCBzbyB3ZSBhcmUg
bG9zaW5nIGZpZGVsaXR5DQo+PiB2cyBwZXItcGFnZSBtYXBwaW5ncy4gQnV0IHRoZSBrZXJuZWwg
dHJhY2tzIGFjY2Vzcy9kaXJ0eSBwZXIgZm9saW8sIHNvIHRoZSBleHRyYQ0KPj4gZmlkZWxpdHkg
d2UgZ2V0IGZvciBwZXItcGFnZSBtYXBwaW5ncyBpcyBpbmdvcmVkIGJ5IHRoZSBrZXJuZWwgYW55
d2F5IGlmIHRoZQ0KPj4gY29udGlndW91cyBtYXBwaW5nIG9ubHkgbWFwcyBwYWdlcyBmcm9tIGEg
c2luZ2xlIGZvbGlvLiBXZSByZWplY3Qgc3BlY2lhbA0KPj4gbWFwcGluZ3MgYmVjYXVzZSB0aGV5
IGFyZSBub3QgYmFja2VkIGJ5IGEgZm9saW8gYXQgYWxsLg0KPj4NCj4+IEZvciB5b3VyIGNhc2Us
IHJlbWFwX3Bmbl9yYW5nZSgpIHdpbGwgY3JlYXRlIHNwZWNpYWwgbWFwcGluZ3Mgc28gd2Ugd2ls
bCBuZXZlcg0KPj4gc2V0IHRoZSBQVEVfQ09OVCBiaXQuDQo+Pg0KPj4gTGlrZWx5IHdlIGFyZSBi
ZWluZyBhIGJpdCB0b28gY29uc2VydmF0aXZlIGhlcmUgYW5kIHdlIG1heSBiZSBhYmxlIHRvIHJl
bGF4IHRoaXMNCj4+IHJlcXVpcmVtZW50IGlmIHdlIGtub3cgdGhhdCBub3RoaW5nIHdpbGwgZXZl
ciBjb25zdW1lIHRoZSBhY2Nlc3MvZGlydHkNCj4+IGluZm9ybWF0aW9uIGZvciBzcGVjaWFsIG1h
cHBpbmdzPyBJJ20gbm90IGlmIHRoYXQgaXMgdGhlIGNhc2UgaW4gZ2VuZXJhbCB0aG91Z2gNCj4+
IC0gaXQgd291bGQgbmVlZCBzb21lIGludmVzdGlnYXRpb24uDQo+Pg0KPj4gV2l0aCB0aGF0IGlz
c3VlIHJlc29sdmVkLCB0aGVyZSBpcyBzdGlsbCBhIHNlY29uZCBpc3N1ZTsgdGhlcmUgYXJlIDIg
d2F5cyB0aGUNCj4+IGFybTY0IGFyY2ggY29kZSBkZXRlY3RzIHN1aXRhYmxlIGNvbnRpZ3VvdXMg
bWFwcGluZ3MuIFRoZSBwcmltYXJ5IHdheSBpcyB2aWEgYQ0KPj4gY2FsbCB0byBzZXRfcHRlcygp
LiBUaGlzIHBhcnQgb2YgdGhlICJQVEUgYmF0Y2hpbmciIEFQSSBhbmQgZXhwbGljaXRseSB0ZWxs
cyB0aGUNCj4+IGltcGxlbWVudGFpdG9uIHRoYXQgYWxsIHRoZSBjb25kaXRpb25zIGFyZSBtZXQg
KGluY2x1ZGluZyB0aGUgbWVtb3J5IGJlaW5nDQo+PiBiYWNrZWQgYnkgYSBmb2xpbykuIFRoaXMg
aXMgdGhlIG1vc3QgZWZmaWNpZW50IGFwcHJvYWNoLiBTZWUgY29udHB0ZV9zZXRfcHRlcygpLg0K
Pj4NCj4+IFRoZXJlIGlzIGEgc2Vjb25kIChoYWNreSkgYXBwcm9hY2ggd2hpY2ggYXR0ZW1wdHMg
dG8gcmVjb2duaXNlIHdoZW4gdGhlIGxhc3QgUFRFDQo+PiBvZiBhIGNvbnRpZ3VvdXMgYmxvY2sg
aXMgc2V0IGFuZCBhdXRvbWF0aWNhbGx5ICJmb2xkIiB0aGUgbWFwcGluZy4gU2VlDQo+PiBjb250
cHRlX3RyeV9mb2xkKCkuIFRoaXMgYXBwcm9hY2ggaGFzIGEgY29zdCBiZWNhdXNlIChmb3Igc3lz
dGVtcyB3aXRob3V0DQo+PiBCQk1MMl9OT0FCT1JUKSB3ZSBoYXZlIHRvIGlzc3VlIGEgVExCSSB3
aGVuIHdlIGZvbGQgdGhlIHJhbmdlLg0KPj4NCj4+IEZvciByZW1hcF9wZm5fcmFuZ2UoKSwgd2Ug
d291bGQgYmUgcmVseWluZyBvbiB0aGUgc2Vjb25kIGFwcHJvYWNoIHNpbmNlIGl0IGlzDQo+PiBu
b3QgY3VycmVudGx5IGJhdGNoZWQgKGFuZCBjb3VsZCBub3QgdXNlIHNldF9wdGVzKCkgYXMgY3Vy
cmVudGx5IHNwZWMnZWQgZHVlIHRvDQo+PiB0aGVyZSBiZWluZyBubyBmb2xpbykuIElmIHdlIGFy
ZSBnb2luZyB0byBhZGQgc3VwcG9ydCBmb3IgY29udGlndW91cyBwZm4tbWFwcGVkDQo+PiBQVEVz
LCBpdCB3b3VsZCBiZSBwcmVmZXJhYmxlIHRvIGFkZCBlcXVpdmFsZW50IGJhdGNoaW5nIEFQSXMg
KG9yIHJlbGF4IHNldF9wdGVzKCkpLg0KPj4NCj4gDQo+IFRoYW5rcyBhIGxvdCwgUnlhbi4gSXQg
c2VlbXMgcXVpdGUgdHJpY2t5IHRvIHN1cHBvcnQgYXV0b21hdGljIGNvbnRfcHRlLg0KPiANCj4+
IEkgdGhpbmsgdGhpcyB3b3VsZCBiZSBhIHVzZWZ1bCBpbXByb3ZlbWVudCwgYnV0IGl0J3Mgbm90
IGFzIHN0cmFpZ2h0Zm9yd2FyZCBhcw0KPj4gYWRkaW5nIFBURV9DT05UIGluIHN5c3RlbV9oZWFw
X21tYXAoKS4NCj4gDQo+IFNpbmNlIGl0J3MganVzdCBhIGRyaXZlciwgSSdtIG5vdCBzdXJlIGlm
IGl0J3MgYWNjZXB0YWJsZSB0byB1c2UgQ09ORklHX0FSTTY0Lg0KPiBIb3dldmVyLCBJIGNhbiBm
aW5kIG1hbnkgaW5zdGFuY2VzIG9mIGl0IGluIGRyaXZlcnMuDQo+IGRyaXZlcnMgJSBnaXQgZ3Jl
cCBDT05GSUdfQVJNNjQgfCB3YyAtbA0KPiAgICAgIDEyNw0KPiANCj4gT24gdGhlIG90aGVyIGhh
bmQsIGEgY29ybmVyIGNhc2UgaXMgd2hlbiB0aGUgZG1hLWJ1ZiBpcyBwYXJ0aWFsbHkgdW5tYXBw
ZWQuDQo+IEkgYXNzdW1lIGNvbnRfcHRlIGNhbiBzdGlsbCBiZSBhdXRvbWF0aWNhbGx5IHVuZm9s
ZGVkLCBldmVuIGZvcg0KPiBzcGVjaWFsIG1hcHBpbmdzPw0KDQpJIHRoaW5rIHVuZm9sZGluZyB3
aWxsIHByb2JhYmx5IGhhcHBlbiB0byB3b3JrLCBidXQgeW91J3JlIGRlZmluaXRlbHkgaW4gdGhl
DQpuZWlnaGJvdXJob29kIG9mICJob3JyaWJsZSBoYWNrIHRoYXQgbWF5IG5vdCB3b3JrIGFzIGlu
dGVuZGVkIGluIHNvbWUgY29ybmVyIGNhc2VzIi4NCg0KSSB0aGluayBpdCB3b3VsZCBiZSBtdWNo
IGJldHRlciB0byBzdXBwb3J0IGJhdGNoaW5nIGZvciBwZm4tbWFwcGVkIHB0ZXMuIFRoYXQNCndv
dWxkIGdlbmVyYWxpemUgdG8gbWFueSBtb3JlIHVzZXJzLiAoYW5kIEkgbWlnaHQgYmUgaW50ZXJl
c3RlZCBpbiB0YWtpbmcgYSBsb29rDQphdCBzb21lIHBvaW50IG5leHQgeWVhciBpZiBub2JvZHkg
ZWxzZSBnZXRzIHRvIGl0KS4NCg0KV2UgZGVsaWJlcmF0ZWx5IGRpZG4ndCB3YW50IHRvIGV4cG9z
ZSB0aGUgaWRlYSBvZiBhIHNpbmdsZSwgc3BlY2lmaWMgY29udGlndW91cw0Kc2l6ZSB0byB0aGUg
Z2VuZXJpYyBjb2RlIHNvIHRoYXQgdGhlIGFyY2ggY291bGQgbWFrZSBtb3JlIGZpbmUtZ3JhaW5l
ZCBkZWNpc2lvbnMuIDopDQoNClRoYW5rcywNClJ5YW4NCg0KDQoNCj4gDQo+IFRoYW5rcw0KPiBC
YXJyeQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
