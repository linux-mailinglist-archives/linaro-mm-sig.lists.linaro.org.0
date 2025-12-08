Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEogO6oD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4F241124B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93D0844BA6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id E3EBF3F7D7
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Dec 2025 10:38:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of ryan.roberts@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=ryan.roberts@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 236421691;
	Mon,  8 Dec 2025 02:37:54 -0800 (PST)
Received: from [10.1.30.155] (XHFQ2J9959.cambridge.arm.com [10.1.30.155])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A6B23F740;
	Mon,  8 Dec 2025 02:37:58 -0800 (PST)
Message-ID: <6f891b70-7ee9-44a3-92a1-bbeb4d2b9fee@arm.com>
Date: Mon, 8 Dec 2025 10:37:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Barry Song <21cnbao@gmail.com>, gao xu <gaoxu2@honor.com>
References: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com>
 <CAGsJ_4w-XtJ8zzc8H4OwW4XV21T8FWGxeoMnfAxmAgBhzrvxWQ@mail.gmail.com>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <CAGsJ_4w-XtJ8zzc8H4OwW4XV21T8FWGxeoMnfAxmAgBhzrvxWQ@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: ryan.roberts@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MRMB6MCW5G2YTZBHXDPYEAUCGOR3CM6D
X-Message-ID-Hash: MRMB6MCW5G2YTZBHXDPYEAUCGOR3CM6D
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:40 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "surenb@google.com" <surenb@google.com>, zhouxiaolong <zhouxiaolong9@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MRMB6MCW5G2YTZBHXDPYEAUCGOR3CM6D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3101];
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
	FREEMAIL_TO(0.00)[gmail.com,honor.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,honor.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,arm.com:mid]
X-Rspamd-Queue-Id: 8E4F241124B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMDgvMTIvMjAyNSAwOTo1MiwgQmFycnkgU29uZyB3cm90ZToNCj4gT24gTW9uLCBEZWMgOCwg
MjAyNSBhdCA1OjQx4oCvUE0gZ2FvIHh1IDxnYW94dTJAaG9ub3IuY29tPiB3cm90ZToNCj4+DQo+
PiBjb21taXQgMDRjN2FkYjU4NzFhICgiZG1hLWJ1Zjogc3lzdGVtX2hlYXA6IHVzZSBsYXJnZXIg
Y29udGlndW91cyBtYXBwaW5ncw0KPj4gaW5zdGVhZCBvZiBwZXItcGFnZSBtbWFwIikgZmFjaWxp
dGF0ZXMgdGhlIHVzZSBvZiBQVEVfQ09OVC4gVGhlIHN5c3RlbV9oZWFwDQo+PiBhbGxvY2F0ZXMg
cGFnZXMgb2Ygb3JkZXIgNCBhbmQgOCB0aGF0IG1lZXQgdGhlIGFsaWdubWVudCByZXF1aXJlbWVu
dHMgZm9yDQo+PiBQVEVfQ09OVC4gZW5hYmxpbmcgUFRFX0NPTlQgZm9yIGxhcmdlciBjb250aWd1
b3VzIG1hcHBpbmdzLg0KPiANCj4gVW5mb3J0dW5hdGVseSwgd2UgZG9uJ3QgaGF2ZSBwdGVfY29u
dCBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuDQo+IEFBcmNoNjQuIE9uIHRoZSBvdGhlciBo
YW5kLCBBQXJjaDY0IGlzbid0IGF1dG9tYXRpY2FsbHkgbWFwcGluZw0KPiBjb250X3B0ZSBmb3Ig
bW1hcC4gSXQgbWlnaHQgYmUgYmV0dGVyIGlmIHRoaXMgd2VyZSBkb25lDQo+IGF1dG9tYXRpY2Fs
bHkgYnkgdGhlIEFSTSBjb2RlLg0KDQpZZXMgaW5kZWVkOyBDT05UX1BURV9NQVNLIGFuZCBQVEVf
Q09OVCBhcmUgYXJtNjQtc3BlY2lmaWMgbWFjcm9zIHRoYXQgY2Fubm90IGJlDQp1c2VkIG91dHNp
ZGUgb2YgdGhlIGFybTY0IGFyY2ggY29kZS4NCg0KPiANCj4gUnlhbihDY2VkKSBpcyB0aGUgZXhw
ZXJ0IG9uIGF1dG9tYXRpY2FsbHkgc2V0dGluZyBjb250X3B0ZSBmb3INCj4gY29udGlndW91cyBt
YXBwaW5nLCBzbyBsZXQncyBhc2sgZm9yIHNvbWUgYWR2aWNlIGZyb20gUnlhbi4NCg0KYXJtNjQg
YXJjaCBjb2RlIHdpbGwgYXV0b21hdGljYWxseSBhbmQgdHJhbnNwYXJlbnRseSBhcHBseSBQVEVf
Q09OVCB3aGVuZXZlciBpdA0KZGV0ZWN0cyBzdWl0YWJsZSBjb25kaXRpb25zLiBUaG9zZSBzdWl0
YWJsZSBjb25kaXRpb25zIGluY2x1ZGU6DQoNCiAgLSBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgYmxv
Y2sgb2YgNjRLLCBhbGlnbmVkIHRvIDY0Sw0KICAtIHZpcnR1YWxseSBjb250aWd1b3VzIGJsb2Nr
IG9mIDY0SywgYWxpZ25lZCB0byA2NEsNCiAgLSA2NEsgYmxvY2sgaGFzIHRoZSBzYW1lIGFjY2Vz
cyBwZXJtaXNzaW9ucw0KICAtIDY0SyBibG9jayBhbGwgYmVsb25ncyB0byB0aGUgc2FtZSBmb2xp
bw0KICAtIG5vdCBhIHNwZWNpYWwgbWFwcGluZw0KDQpUaGUgbGFzdCAyIHJlcXVpcmVtZW50cyBh
cmUgdGhlIHRyaWNreSBvbmVzIGhlcmU6IFdlIHJlcXVpcmUgdGhhdCBldmVyeSBwYWdlIGluDQp0
aGUgYmxvY2sgYmVsb25ncyB0byB0aGUgc2FtZSBmb2xpbyBiZWNhdXNlIGEgY29udGlnb3VzIG1h
cHBpbmcgb25seSBtYWludGFpbnMgYQ0Kc2luZ2xlIGFjY2VzcyBhbmQgZGlydHkgYml0IGZvciB0
aGUgd2hvbGUgNjRLIGJsb2NrLCBzbyB3ZSBhcmUgbG9zaW5nIGZpZGVsaXR5DQp2cyBwZXItcGFn
ZSBtYXBwaW5ncy4gQnV0IHRoZSBrZXJuZWwgdHJhY2tzIGFjY2Vzcy9kaXJ0eSBwZXIgZm9saW8s
IHNvIHRoZSBleHRyYQ0KZmlkZWxpdHkgd2UgZ2V0IGZvciBwZXItcGFnZSBtYXBwaW5ncyBpcyBp
bmdvcmVkIGJ5IHRoZSBrZXJuZWwgYW55d2F5IGlmIHRoZQ0KY29udGlndW91cyBtYXBwaW5nIG9u
bHkgbWFwcyBwYWdlcyBmcm9tIGEgc2luZ2xlIGZvbGlvLiBXZSByZWplY3Qgc3BlY2lhbA0KbWFw
cGluZ3MgYmVjYXVzZSB0aGV5IGFyZSBub3QgYmFja2VkIGJ5IGEgZm9saW8gYXQgYWxsLg0KDQpG
b3IgeW91ciBjYXNlLCByZW1hcF9wZm5fcmFuZ2UoKSB3aWxsIGNyZWF0ZSBzcGVjaWFsIG1hcHBp
bmdzIHNvIHdlIHdpbGwgbmV2ZXINCnNldCB0aGUgUFRFX0NPTlQgYml0Lg0KDQpMaWtlbHkgd2Ug
YXJlIGJlaW5nIGEgYml0IHRvbyBjb25zZXJ2YXRpdmUgaGVyZSBhbmQgd2UgbWF5IGJlIGFibGUg
dG8gcmVsYXggdGhpcw0KcmVxdWlyZW1lbnQgaWYgd2Uga25vdyB0aGF0IG5vdGhpbmcgd2lsbCBl
dmVyIGNvbnN1bWUgdGhlIGFjY2Vzcy9kaXJ0eQ0KaW5mb3JtYXRpb24gZm9yIHNwZWNpYWwgbWFw
cGluZ3M/IEknbSBub3QgaWYgdGhhdCBpcyB0aGUgY2FzZSBpbiBnZW5lcmFsIHRob3VnaA0KLSBp
dCB3b3VsZCBuZWVkIHNvbWUgaW52ZXN0aWdhdGlvbi4NCg0KV2l0aCB0aGF0IGlzc3VlIHJlc29s
dmVkLCB0aGVyZSBpcyBzdGlsbCBhIHNlY29uZCBpc3N1ZTsgdGhlcmUgYXJlIDIgd2F5cyB0aGUN
CmFybTY0IGFyY2ggY29kZSBkZXRlY3RzIHN1aXRhYmxlIGNvbnRpZ3VvdXMgbWFwcGluZ3MuIFRo
ZSBwcmltYXJ5IHdheSBpcyB2aWEgYQ0KY2FsbCB0byBzZXRfcHRlcygpLiBUaGlzIHBhcnQgb2Yg
dGhlICJQVEUgYmF0Y2hpbmciIEFQSSBhbmQgZXhwbGljaXRseSB0ZWxscyB0aGUNCmltcGxlbWVu
dGFpdG9uIHRoYXQgYWxsIHRoZSBjb25kaXRpb25zIGFyZSBtZXQgKGluY2x1ZGluZyB0aGUgbWVt
b3J5IGJlaW5nDQpiYWNrZWQgYnkgYSBmb2xpbykuIFRoaXMgaXMgdGhlIG1vc3QgZWZmaWNpZW50
IGFwcHJvYWNoLiBTZWUgY29udHB0ZV9zZXRfcHRlcygpLg0KDQpUaGVyZSBpcyBhIHNlY29uZCAo
aGFja3kpIGFwcHJvYWNoIHdoaWNoIGF0dGVtcHRzIHRvIHJlY29nbmlzZSB3aGVuIHRoZSBsYXN0
IFBURQ0Kb2YgYSBjb250aWd1b3VzIGJsb2NrIGlzIHNldCBhbmQgYXV0b21hdGljYWxseSAiZm9s
ZCIgdGhlIG1hcHBpbmcuIFNlZQ0KY29udHB0ZV90cnlfZm9sZCgpLiBUaGlzIGFwcHJvYWNoIGhh
cyBhIGNvc3QgYmVjYXVzZSAoZm9yIHN5c3RlbXMgd2l0aG91dA0KQkJNTDJfTk9BQk9SVCkgd2Ug
aGF2ZSB0byBpc3N1ZSBhIFRMQkkgd2hlbiB3ZSBmb2xkIHRoZSByYW5nZS4NCg0KRm9yIHJlbWFw
X3Bmbl9yYW5nZSgpLCB3ZSB3b3VsZCBiZSByZWx5aW5nIG9uIHRoZSBzZWNvbmQgYXBwcm9hY2gg
c2luY2UgaXQgaXMNCm5vdCBjdXJyZW50bHkgYmF0Y2hlZCAoYW5kIGNvdWxkIG5vdCB1c2Ugc2V0
X3B0ZXMoKSBhcyBjdXJyZW50bHkgc3BlYydlZCBkdWUgdG8NCnRoZXJlIGJlaW5nIG5vIGZvbGlv
KS4gSWYgd2UgYXJlIGdvaW5nIHRvIGFkZCBzdXBwb3J0IGZvciBjb250aWd1b3VzIHBmbi1tYXBw
ZWQNClBURXMsIGl0IHdvdWxkIGJlIHByZWZlcmFibGUgdG8gYWRkIGVxdWl2YWxlbnQgYmF0Y2hp
bmcgQVBJcyAob3IgcmVsYXggc2V0X3B0ZXMoKSkuDQoNCkkgdGhpbmsgdGhpcyB3b3VsZCBiZSBh
IHVzZWZ1bCBpbXByb3ZlbWVudCwgYnV0IGl0J3Mgbm90IGFzIHN0cmFpZ2h0Zm9yd2FyZCBhcw0K
YWRkaW5nIFBURV9DT05UIGluIHN5c3RlbV9oZWFwX21tYXAoKS4NCg0KVGhhbmtzLA0KUnlhbg0K
DQo+IA0KPj4NCj4+IEFmdGVyIGFwcGx5aW5nIHRoaXMgcGF0Y2gsIFRMQiBtaXNzZXMgYXJlIHJl
ZHVjZWQgYnkgYXBwcm94aW1hdGVseSA1JSB3aGVuDQo+PiBvcGVuaW5nIHRoZSBjYW1lcmEgb24g
QW5kcm9pZCBzeXN0ZW1zLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IGdhbyB4dSA8Z2FveHUyQGhv
bm9yLmNvbT4NCj4+IC0tLQ0KPiANCj4gVGhhbmtzDQo+IEJhcnJ5DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
