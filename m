Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMnvBlZm5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DE94320AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B14A74095D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:45:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id CCBD2400F6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2026 06:34:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ferli2cG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of aneesh.kumar@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=aneesh.kumar@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0626F42DE2;
	Mon, 20 Apr 2026 06:34:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DDE9C19425;
	Mon, 20 Apr 2026 06:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776666856;
	bh=SIQzikZxZrp71GghANcUxQ34/VjF6aP3rRJUnE4qCP0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ferli2cGr0NulEsabkChnw3zEB6FRv162hX/dUU+qBVnao9EBzZ/UbCTXcYJK95YT
	 9hHCCNaUTp6TYIwUtfw/AsX3bZXymXbQR7MQMQ44aDjdx1ZlMpV8hUYMcujSEcR454
	 J7ZWrp0TNt7d6tHYs9bZOu7qoXctDQuHXGZALhr+0sP5+ub98rzuAQeJj81AnLLNVG
	 Pc0lHdaXgajlQCpnSTIWFrooAeIiupbYNMujX8uW6ZvCMUJmP5zJid9v2rvFE6KPgt
	 fzL/CDnGdhfmxbLG3WsxnBM8SvFhNhAiyU4nC6/JtJF79tkLrIcNrSnSPqLXO9sbrv
	 72pq1x20ubACQ==
X-Mailer: emacs 30.2 (via feedmail 11-beta-1 I)
From: Aneesh Kumar K.V <aneesh.kumar@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org
In-Reply-To: <20260325192352.437608-2-jiri@resnulli.us>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
Date: Mon, 20 Apr 2026 12:04:06 +0530
Message-ID: <yq5atst6ywbl.fsf@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: aneesh.kumar@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z74ALNAJODWFFUBRWMD3TFPVVJLGN63B
X-Message-ID-Hash: Z74ALNAJODWFFUBRWMD3TFPVVJLGN63B
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:56 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z74ALNAJODWFFUBRWMD3TFPVVJLGN63B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	FROM_NEQ_ENVFROM(0.00)[aneesh.kumar@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 95DE94320AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JpdGVzOg0KDQo+IEZyb206IEppcmkgUGly
a28gPGppcmlAbnZpZGlhLmNvbT4NCj4NCj4gQ3VycmVudCBDQyBkZXNpZ25zIGRvbid0IHBsYWNl
IGEgdklPTU1VIGluIGZyb250IG9mIHVudHJ1c3RlZCBkZXZpY2VzLg0KPiBJbnN0ZWFkLCB0aGUg
RE1BIEFQSSBmb3JjZXMgYWxsIHVudHJ1c3RlZCBkZXZpY2UgRE1BIHRocm91Z2ggc3dpb3RsYg0K
PiBib3VuY2UgYnVmZmVycyAoaXNfc3dpb3RsYl9mb3JjZV9ib3VuY2UoKSkgd2hpY2ggY29waWVz
IGRhdGEgaW50bw0KPiBzaGFyZWQgbWVtb3J5IG9uIGJlaGFsZiBvZiB0aGUgZGV2aWNlLg0KPg0K
PiBXaGVuIGEgY2FsbGVyIGhhcyBhbHJlYWR5IGFycmFuZ2VkIGZvciB0aGUgbWVtb3J5IHRvIGJl
IHNoYXJlZA0KPiB2aWEgc2V0X21lbW9yeV9kZWNyeXB0ZWQoKSwgdGhlIERNQSBBUEkgbmVlZHMg
dG8ga25vdyBzbyBpdCBjYW4gbWFwDQo+IGRpcmVjdGx5IHVzaW5nIHRoZSB1bmVuY3J5cHRlZCBw
aHlzaWNhbCBhZGRyZXNzIHJhdGhlciB0aGFuIGJvdW5jZQ0KPiBidWZmZXJpbmcuIEZvbGxvd2lu
ZyB0aGUgcGF0dGVybiBvZiBETUFfQVRUUl9NTUlPLCBhZGQNCj4gRE1BX0FUVFJfQ0NfU0hBUkVE
IGZvciB0aGlzIHB1cnBvc2UuIExpa2UgdGhlIE1NSU8gY2FzZSwgb25seSB0aGUNCj4gY2FsbGVy
IGtub3dzIHdoYXQga2luZCBvZiBtZW1vcnkgaXQgaGFzIGFuZCBtdXN0IGluZm9ybSB0aGUgRE1B
IEFQSQ0KPiBmb3IgaXQgdG8gd29yayBjb3JyZWN0bHkuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEpp
cmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4gLS0tDQo+IHY0LT52NToNCj4gLSByZWJhc2Vk
IG9uIHRvcCBvZCBkbWEtbWFwcGluZy1mb3ItbmV4dA0KPiAtIHMvZGVjcnlwdGVkL3NoYXJlZC8N
Cj4gdjMtPnY0Og0KPiAtIGFkZGVkIHNvbWUgc2FuaXR5IGNoZWNrcyB0byBkbWFfbWFwX3BoeXMg
YW5kIGRtYV91bm1hcF9waHlzDQo+IC0gZW5oYW5jZWQgZG9jdW1lbnRhdGlvbiBvZiBETUFfQVRU
Ul9DQ19ERUNSWVBURUQgYXR0cg0KPiB2MS0+djI6DQo+IC0gcmViYXNlZCBvbiB0b3Agb2YgcmVj
ZW50IGRtYS1tYXBwaW5nLWZpeGVzDQo+IC0tLQ0KPiAgaW5jbHVkZS9saW51eC9kbWEtbWFwcGlu
Zy5oIHwgMTAgKysrKysrKysrKw0KPiAgaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hLmggIHwgIDMg
KystDQo+ICBrZXJuZWwvZG1hL2RpcmVjdC5oICAgICAgICAgfCAxNCArKysrKysrKysrKy0tLQ0K
PiAga2VybmVsL2RtYS9tYXBwaW5nLmMgICAgICAgIHwgMTMgKysrKysrKysrKystLQ0KPiAgNCBm
aWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtbWFwcGluZy5oIGIvaW5jbHVkZS9saW51eC9kbWEt
bWFwcGluZy5oDQo+IGluZGV4IDY3N2M1MWFiNzUxMC4uZGI4YWIyNGE1NGY0IDEwMDY0NA0KPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9k
bWEtbWFwcGluZy5oDQo+IEBAIC05Miw2ICs5MiwxNiBAQA0KPiAgICogZmx1c2hpbmcuDQo+ICAg
Ki8NCj4gICNkZWZpbmUgRE1BX0FUVFJfUkVRVUlSRV9DT0hFUkVOVAkoMVVMIDw8IDEyKQ0KPiAr
LyoNCj4gKyAqIERNQV9BVFRSX0NDX1NIQVJFRDogSW5kaWNhdGVzIHRoZSBETUEgbWFwcGluZyBp
cyBzaGFyZWQgKGRlY3J5cHRlZCkgZm9yDQo+ICsgKiBjb25maWRlbnRpYWwgY29tcHV0aW5nIGd1
ZXN0cy4gRm9yIG5vcm1hbCBzeXN0ZW0gbWVtb3J5IHRoZSBjYWxsZXIgbXVzdCBoYXZlDQo+ICsg
KiBjYWxsZWQgc2V0X21lbW9yeV9kZWNyeXB0ZWQoKSwgYW5kIHBncHJvdF9kZWNyeXB0ZWQgbXVz
dCBiZSB1c2VkIHdoZW4NCj4gKyAqIGNyZWF0aW5nIENQVSBQVEVzIGZvciB0aGUgbWFwcGluZy4g
VGhlIHNhbWUgc2hhcmVkIHNlbWFudGljIG1heSBiZSBwYXNzZWQNCj4gKyAqIHRvIHRoZSB2SU9N
TVUgd2hlbiBpdCBzZXRzIHVwIHRoZSBJT1BURS4gRm9yIE1NSU8gdXNlIHRvZ2V0aGVyIHdpdGgN
Cj4gKyAqIERNQV9BVFRSX01NSU8gdG8gaW5kaWNhdGUgc2hhcmVkIE1NSU8uIFVubGVzcyBETUFf
QVRUUl9NTUlPIGlzIHByb3ZpZGVkDQo+ICsgKiBhIHN0cnVjdCBwYWdlIGlzIHJlcXVpcmVkLg0K
PiArICovDQo+ICsjZGVmaW5lIERNQV9BVFRSX0NDX1NIQVJFRAkoMVVMIDw8IDEzKQ0KPiAgDQo+
ICAvKg0KPiAgICogQSBkbWFfYWRkcl90IGNhbiBob2xkIGFueSB2YWxpZCBETUEgb3IgYnVzIGFk
ZHJlc3MgZm9yIHRoZSBwbGF0Zm9ybS4gIEl0IGNhbg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS90
cmFjZS9ldmVudHMvZG1hLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaA0KPiBpbmRleCA2
MzU5N2IwMDQ0MjQuLjMxYzlkZGY3MmM5ZCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS90cmFjZS9l
dmVudHMvZG1hLmgNCj4gKysrIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hLmgNCj4gQEAgLTM0
LDcgKzM0LDggQEAgVFJBQ0VfREVGSU5FX0VOVU0oRE1BX05PTkUpOw0KPiAgCQl7IERNQV9BVFRS
X1BSSVZJTEVHRUQsICJQUklWSUxFR0VEIiB9LCBcDQo+ICAJCXsgRE1BX0FUVFJfTU1JTywgIk1N
SU8iIH0sIFwNCj4gIAkJeyBETUFfQVRUUl9ERUJVR0dJTkdfSUdOT1JFX0NBQ0hFTElORVMsICJD
QUNIRUxJTkVTX09WRVJMQVAiIH0sIFwNCj4gLQkJeyBETUFfQVRUUl9SRVFVSVJFX0NPSEVSRU5U
LCAiUkVRVUlSRV9DT0hFUkVOVCIgfSkNCj4gKwkJeyBETUFfQVRUUl9SRVFVSVJFX0NPSEVSRU5U
LCAiUkVRVUlSRV9DT0hFUkVOVCIgfSwgXA0KPiArCQl7IERNQV9BVFRSX0NDX1NIQVJFRCwgIkND
X1NIQVJFRCIgfSkNCj4gIA0KPiAgREVDTEFSRV9FVkVOVF9DTEFTUyhkbWFfbWFwLA0KPiAgCVRQ
X1BST1RPKHN0cnVjdCBkZXZpY2UgKmRldiwgcGh5c19hZGRyX3QgcGh5c19hZGRyLCBkbWFfYWRk
cl90IGRtYV9hZGRyLA0KPiBkaWZmIC0tZ2l0IGEva2VybmVsL2RtYS9kaXJlY3QuaCBiL2tlcm5l
bC9kbWEvZGlyZWN0LmgNCj4gaW5kZXggYjg2ZmY2NTQ5NmZjLi43MTQwYzIwOGMxMjMgMTAwNjQ0
DQo+IC0tLSBhL2tlcm5lbC9kbWEvZGlyZWN0LmgNCj4gKysrIGIva2VybmVsL2RtYS9kaXJlY3Qu
aA0KPiBAQCAtODksMTYgKzg5LDI0IEBAIHN0YXRpYyBpbmxpbmUgZG1hX2FkZHJfdCBkbWFfZGly
ZWN0X21hcF9waHlzKHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gIAlkbWFfYWRkcl90IGRtYV9hZGRy
Ow0KPiAgDQo+ICAJaWYgKGlzX3N3aW90bGJfZm9yY2VfYm91bmNlKGRldikpIHsNCj4gLQkJaWYg
KGF0dHJzICYgKERNQV9BVFRSX01NSU8gfCBETUFfQVRUUl9SRVFVSVJFX0NPSEVSRU5UKSkNCj4g
LQkJCXJldHVybiBETUFfTUFQUElOR19FUlJPUjsNCj4gKwkJaWYgKCEoYXR0cnMgJiBETUFfQVRU
Ul9DQ19TSEFSRUQpKSB7DQo+ICsJCQlpZiAoYXR0cnMgJiAoRE1BX0FUVFJfTU1JTyB8IERNQV9B
VFRSX1JFUVVJUkVfQ09IRVJFTlQpKQ0KPiArCQkJCXJldHVybiBETUFfTUFQUElOR19FUlJPUjsN
Cj4gIA0KPiAtCQlyZXR1cm4gc3dpb3RsYl9tYXAoZGV2LCBwaHlzLCBzaXplLCBkaXIsIGF0dHJz
KTsNCj4gKwkJCXJldHVybiBzd2lvdGxiX21hcChkZXYsIHBoeXMsIHNpemUsIGRpciwgYXR0cnMp
Ow0KPiArCQl9DQo+ICsJfSBlbHNlIGlmIChhdHRycyAmIERNQV9BVFRSX0NDX1NIQVJFRCkgew0K
PiArCQlyZXR1cm4gRE1BX01BUFBJTkdfRVJST1I7DQo+ICAJfQ0KPg0KDQpXaGF0IGlzIHRoaXMg
Y2hlY2sgZm9yPyBJZiB3ZSBhcmUgcmVxdWVzdGluZyBhIERNQSBtYXBwaW5nIHdpdGgNCkRNQV9B
VFRSX0NDX1NIQVJFRCwgc2hvdWxkbuKAmXQgaXQgYmUgYWxsb3dlZD8gSWYgbm90LCBob3cgd291
bGQgd2UgcmVhY2gNCnRoZSBjb25kaXRpb25hbCBiZWxvdyB3aGVyZSB3ZSBjb252ZXJ0IHRoZSBw
aHlzaWNhbCBhZGRyZXNzIHRvIGEgRE1BDQphZGRyZXNzIHVzaW5nIHBoeXNfdG9fZG1hX3VuZW5j
cnlwdGVkKCk/LiBBbHNvLCBob3cgaXMgdGhpcyBzdXBwb3NlZCB0bw0KaW50ZXJhY3Qgd2l0aCBp
c19zd2lvdGxiX2ZvcmNlX2JvdW5jZSgpP+KAnQ0KDQo+ICANCj4gIAlpZiAoYXR0cnMgJiBETUFf
QVRUUl9NTUlPKSB7DQo+ICAJCWRtYV9hZGRyID0gcGh5czsNCj4gIAkJaWYgKHVubGlrZWx5KCFk
bWFfY2FwYWJsZShkZXYsIGRtYV9hZGRyLCBzaXplLCBmYWxzZSkpKQ0KPiAgCQkJZ290byBlcnJf
b3ZlcmZsb3c7DQo+ICsJfSBlbHNlIGlmIChhdHRycyAmIERNQV9BVFRSX0NDX1NIQVJFRCkgew0K
PiArCQlkbWFfYWRkciA9IHBoeXNfdG9fZG1hX3VuZW5jcnlwdGVkKGRldiwgcGh5cyk7DQo+ICsJ
CWlmICh1bmxpa2VseSghZG1hX2NhcGFibGUoZGV2LCBkbWFfYWRkciwgc2l6ZSwgZmFsc2UpKSkN
Cj4gKwkJCWdvdG8gZXJyX292ZXJmbG93Ow0KPiAgCX0gZWxzZSB7DQo+ICAJCWRtYV9hZGRyID0g
cGh5c190b19kbWEoZGV2LCBwaHlzKTsNCj4gIAkJaWYgKHVubGlrZWx5KCFkbWFfY2FwYWJsZShk
ZXYsIGRtYV9hZGRyLCBzaXplLCB0cnVlKSkgfHwNCg0KLWFuZWVzaA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
