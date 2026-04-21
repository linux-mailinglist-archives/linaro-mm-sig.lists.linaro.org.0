Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO7BFdu/6WkXjQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 08:44:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CD19A44DB1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 08:44:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2933F404B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 06:44:41 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 302E93F980
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Apr 2026 09:42:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TRmeV4Fv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of aneesh.kumar@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=aneesh.kumar@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E21260133;
	Tue, 21 Apr 2026 09:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5507C2BCB0;
	Tue, 21 Apr 2026 09:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776764534;
	bh=CiSVnNgRCaHSGJT8DCJJ7w1/tJMsxTxV+xA29sN2h8Y=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=TRmeV4FvYBYbsXy1zdSSD7wQMzaeI/89bhmhCaXUiw4K6pFfkykBhmi/tVFkyb3Tu
	 +jc4LrZFyIF0yv4zlH0NFzwnLPuSJ7njT0n7qE6zd3iviEryaXJxxUB6zfBs0ks1nZ
	 nw0qcVE+fE0ik0PyPZku1iiOjYYPceqqavHZG5Mj72e+ETOUUjIIPdxqo1iqdsu/xU
	 f3Klf26FiE3fTtYQdNOM9yaIVR9+yb4KDFT0B5xahSUnm4aCxxStI3KORouCSTZg0I
	 DbqoV8zFxF0NBahedgCnowRmXkM8lzx700THvjh8ROad/VwioFKTukDt2LPyow9GPD
	 l3msYy1UkykLg==
X-Mailer: emacs 30.2 (via feedmail 11-beta-1 I)
From: Aneesh Kumar K.V <aneesh.kumar@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
In-Reply-To: <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us> <yq5atst6ywbl.fsf@kernel.org>
 <4qdizkkoeke3cvkcf35upa7p7ick6s654eqlrizmi7ozkw5eze@tnpk2e34xgwl>
Date: Tue, 21 Apr 2026 15:12:03 +0530
Message-ID: <yq5awly0d504.fsf@kernel.org>
MIME-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: aneesh.kumar@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B5JTTBS4EXOT5A632NCAKM4X6DZ3L6OB
X-Message-ID-Hash: B5JTTBS4EXOT5A632NCAKM4X6DZ3L6OB
X-Mailman-Approved-At: Thu, 23 Apr 2026 06:44:39 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B5JTTBS4EXOT5A632NCAKM4X6DZ3L6OB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[45];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[aneesh.kumar@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,resnulli.us:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CD19A44DB1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JpdGVzOg0KDQo+IE1vbiwgQXByIDIwLCAy
MDI2IGF0IDA4OjM0OjA2QU0gKzAyMDAsIGFuZWVzaC5rdW1hckBrZXJuZWwub3JnIHdyb3RlOg0K
Pj5KaXJpIFBpcmtvIDxqaXJpQHJlc251bGxpLnVzPiB3cml0ZXM6DQo+Pg0KPj4+IEZyb206IEpp
cmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4+Pg0KPj4+IEN1cnJlbnQgQ0MgZGVzaWducyBk
b24ndCBwbGFjZSBhIHZJT01NVSBpbiBmcm9udCBvZiB1bnRydXN0ZWQgZGV2aWNlcy4NCj4+PiBJ
bnN0ZWFkLCB0aGUgRE1BIEFQSSBmb3JjZXMgYWxsIHVudHJ1c3RlZCBkZXZpY2UgRE1BIHRocm91
Z2ggc3dpb3RsYg0KPj4+IGJvdW5jZSBidWZmZXJzIChpc19zd2lvdGxiX2ZvcmNlX2JvdW5jZSgp
KSB3aGljaCBjb3BpZXMgZGF0YSBpbnRvDQo+Pj4gc2hhcmVkIG1lbW9yeSBvbiBiZWhhbGYgb2Yg
dGhlIGRldmljZS4NCj4+Pg0KPj4+IFdoZW4gYSBjYWxsZXIgaGFzIGFscmVhZHkgYXJyYW5nZWQg
Zm9yIHRoZSBtZW1vcnkgdG8gYmUgc2hhcmVkDQo+Pj4gdmlhIHNldF9tZW1vcnlfZGVjcnlwdGVk
KCksIHRoZSBETUEgQVBJIG5lZWRzIHRvIGtub3cgc28gaXQgY2FuIG1hcA0KPj4+IGRpcmVjdGx5
IHVzaW5nIHRoZSB1bmVuY3J5cHRlZCBwaHlzaWNhbCBhZGRyZXNzIHJhdGhlciB0aGFuIGJvdW5j
ZQ0KPj4+IGJ1ZmZlcmluZy4gRm9sbG93aW5nIHRoZSBwYXR0ZXJuIG9mIERNQV9BVFRSX01NSU8s
IGFkZA0KPj4+IERNQV9BVFRSX0NDX1NIQVJFRCBmb3IgdGhpcyBwdXJwb3NlLiBMaWtlIHRoZSBN
TUlPIGNhc2UsIG9ubHkgdGhlDQo+Pj4gY2FsbGVyIGtub3dzIHdoYXQga2luZCBvZiBtZW1vcnkg
aXQgaGFzIGFuZCBtdXN0IGluZm9ybSB0aGUgRE1BIEFQSQ0KPj4+IGZvciBpdCB0byB3b3JrIGNv
cnJlY3RseS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEppcmkgUGlya28gPGppcmlAbnZpZGlh
LmNvbT4NCj4+PiAtLS0NCj4+PiB2NC0+djU6DQo+Pj4gLSByZWJhc2VkIG9uIHRvcCBvZCBkbWEt
bWFwcGluZy1mb3ItbmV4dA0KPj4+IC0gcy9kZWNyeXB0ZWQvc2hhcmVkLw0KPj4+IHYzLT52NDoN
Cj4+PiAtIGFkZGVkIHNvbWUgc2FuaXR5IGNoZWNrcyB0byBkbWFfbWFwX3BoeXMgYW5kIGRtYV91
bm1hcF9waHlzDQo+Pj4gLSBlbmhhbmNlZCBkb2N1bWVudGF0aW9uIG9mIERNQV9BVFRSX0NDX0RF
Q1JZUFRFRCBhdHRyDQo+Pj4gdjEtPnYyOg0KPj4+IC0gcmViYXNlZCBvbiB0b3Agb2YgcmVjZW50
IGRtYS1tYXBwaW5nLWZpeGVzDQo+Pj4gLS0tDQo+Pj4gIGluY2x1ZGUvbGludXgvZG1hLW1hcHBp
bmcuaCB8IDEwICsrKysrKysrKysNCj4+PiAgaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hLmggIHwg
IDMgKystDQo+Pj4gIGtlcm5lbC9kbWEvZGlyZWN0LmggICAgICAgICB8IDE0ICsrKysrKysrKysr
LS0tDQo+Pj4gIGtlcm5lbC9kbWEvbWFwcGluZy5jICAgICAgICB8IDEzICsrKysrKysrKysrLS0N
Cj4+PiAgNCBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
Pj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaCBiL2luY2x1
ZGUvbGludXgvZG1hLW1hcHBpbmcuaA0KPj4+IGluZGV4IDY3N2M1MWFiNzUxMC4uZGI4YWIyNGE1
NGY0IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaA0KPj4+ICsr
KyBiL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaA0KPj4+IEBAIC05Miw2ICs5MiwxNiBAQA0K
Pj4+ICAgKiBmbHVzaGluZy4NCj4+PiAgICovDQo+Pj4gICNkZWZpbmUgRE1BX0FUVFJfUkVRVUlS
RV9DT0hFUkVOVAkoMVVMIDw8IDEyKQ0KPj4+ICsvKg0KPj4+ICsgKiBETUFfQVRUUl9DQ19TSEFS
RUQ6IEluZGljYXRlcyB0aGUgRE1BIG1hcHBpbmcgaXMgc2hhcmVkIChkZWNyeXB0ZWQpIGZvcg0K
Pj4+ICsgKiBjb25maWRlbnRpYWwgY29tcHV0aW5nIGd1ZXN0cy4gRm9yIG5vcm1hbCBzeXN0ZW0g
bWVtb3J5IHRoZSBjYWxsZXIgbXVzdCBoYXZlDQo+Pj4gKyAqIGNhbGxlZCBzZXRfbWVtb3J5X2Rl
Y3J5cHRlZCgpLCBhbmQgcGdwcm90X2RlY3J5cHRlZCBtdXN0IGJlIHVzZWQgd2hlbg0KPj4+ICsg
KiBjcmVhdGluZyBDUFUgUFRFcyBmb3IgdGhlIG1hcHBpbmcuIFRoZSBzYW1lIHNoYXJlZCBzZW1h
bnRpYyBtYXkgYmUgcGFzc2VkDQo+Pj4gKyAqIHRvIHRoZSB2SU9NTVUgd2hlbiBpdCBzZXRzIHVw
IHRoZSBJT1BURS4gRm9yIE1NSU8gdXNlIHRvZ2V0aGVyIHdpdGgNCj4+PiArICogRE1BX0FUVFJf
TU1JTyB0byBpbmRpY2F0ZSBzaGFyZWQgTU1JTy4gVW5sZXNzIERNQV9BVFRSX01NSU8gaXMgcHJv
dmlkZWQNCj4+PiArICogYSBzdHJ1Y3QgcGFnZSBpcyByZXF1aXJlZC4NCj4+PiArICovDQo+Pj4g
KyNkZWZpbmUgRE1BX0FUVFJfQ0NfU0hBUkVECSgxVUwgPDwgMTMpDQo+Pj4gIA0KPj4+ICAvKg0K
Pj4+ICAgKiBBIGRtYV9hZGRyX3QgY2FuIGhvbGQgYW55IHZhbGlkIERNQSBvciBidXMgYWRkcmVz
cyBmb3IgdGhlIHBsYXRmb3JtLiAgSXQgY2FuDQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdHJh
Y2UvZXZlbnRzL2RtYS5oIGIvaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hLmgNCj4+PiBpbmRleCA2
MzU5N2IwMDQ0MjQuLjMxYzlkZGY3MmM5ZCAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRlL3RyYWNl
L2V2ZW50cy9kbWEuaA0KPj4+ICsrKyBiL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYS5oDQo+Pj4g
QEAgLTM0LDcgKzM0LDggQEAgVFJBQ0VfREVGSU5FX0VOVU0oRE1BX05PTkUpOw0KPj4+ICAJCXsg
RE1BX0FUVFJfUFJJVklMRUdFRCwgIlBSSVZJTEVHRUQiIH0sIFwNCj4+PiAgCQl7IERNQV9BVFRS
X01NSU8sICJNTUlPIiB9LCBcDQo+Pj4gIAkJeyBETUFfQVRUUl9ERUJVR0dJTkdfSUdOT1JFX0NB
Q0hFTElORVMsICJDQUNIRUxJTkVTX09WRVJMQVAiIH0sIFwNCj4+PiAtCQl7IERNQV9BVFRSX1JF
UVVJUkVfQ09IRVJFTlQsICJSRVFVSVJFX0NPSEVSRU5UIiB9KQ0KPj4+ICsJCXsgRE1BX0FUVFJf
UkVRVUlSRV9DT0hFUkVOVCwgIlJFUVVJUkVfQ09IRVJFTlQiIH0sIFwNCj4+PiArCQl7IERNQV9B
VFRSX0NDX1NIQVJFRCwgIkNDX1NIQVJFRCIgfSkNCj4+PiAgDQo+Pj4gIERFQ0xBUkVfRVZFTlRf
Q0xBU1MoZG1hX21hcCwNCj4+PiAgCVRQX1BST1RPKHN0cnVjdCBkZXZpY2UgKmRldiwgcGh5c19h
ZGRyX3QgcGh5c19hZGRyLCBkbWFfYWRkcl90IGRtYV9hZGRyLA0KPj4+IGRpZmYgLS1naXQgYS9r
ZXJuZWwvZG1hL2RpcmVjdC5oIGIva2VybmVsL2RtYS9kaXJlY3QuaA0KPj4+IGluZGV4IGI4NmZm
NjU0OTZmYy4uNzE0MGMyMDhjMTIzIDEwMDY0NA0KPj4+IC0tLSBhL2tlcm5lbC9kbWEvZGlyZWN0
LmgNCj4+PiArKysgYi9rZXJuZWwvZG1hL2RpcmVjdC5oDQo+Pj4gQEAgLTg5LDE2ICs4OSwyNCBA
QCBzdGF0aWMgaW5saW5lIGRtYV9hZGRyX3QgZG1hX2RpcmVjdF9tYXBfcGh5cyhzdHJ1Y3QgZGV2
aWNlICpkZXYsDQo+Pj4gIAlkbWFfYWRkcl90IGRtYV9hZGRyOw0KPj4+ICANCj4+PiAgCWlmIChp
c19zd2lvdGxiX2ZvcmNlX2JvdW5jZShkZXYpKSB7DQo+Pj4gLQkJaWYgKGF0dHJzICYgKERNQV9B
VFRSX01NSU8gfCBETUFfQVRUUl9SRVFVSVJFX0NPSEVSRU5UKSkNCj4+PiAtCQkJcmV0dXJuIERN
QV9NQVBQSU5HX0VSUk9SOw0KPj4+ICsJCWlmICghKGF0dHJzICYgRE1BX0FUVFJfQ0NfU0hBUkVE
KSkgew0KPj4+ICsJCQlpZiAoYXR0cnMgJiAoRE1BX0FUVFJfTU1JTyB8IERNQV9BVFRSX1JFUVVJ
UkVfQ09IRVJFTlQpKQ0KPj4+ICsJCQkJcmV0dXJuIERNQV9NQVBQSU5HX0VSUk9SOw0KPj4+ICAN
Cj4+PiAtCQlyZXR1cm4gc3dpb3RsYl9tYXAoZGV2LCBwaHlzLCBzaXplLCBkaXIsIGF0dHJzKTsN
Cj4+PiArCQkJcmV0dXJuIHN3aW90bGJfbWFwKGRldiwgcGh5cywgc2l6ZSwgZGlyLCBhdHRycyk7
DQo+Pj4gKwkJfQ0KPj4+ICsJfSBlbHNlIGlmIChhdHRycyAmIERNQV9BVFRSX0NDX1NIQVJFRCkg
ew0KPj4+ICsJCXJldHVybiBETUFfTUFQUElOR19FUlJPUjsNCj4+PiAgCX0NCj4+Pg0KPj4NCj4+
V2hhdCBpcyB0aGlzIGNoZWNrIGZvcj8gSWYgd2UgYXJlIHJlcXVlc3RpbmcgYSBETUEgbWFwcGlu
ZyB3aXRoDQo+PkRNQV9BVFRSX0NDX1NIQVJFRCwgc2hvdWxkbuKAmXQgaXQgYmUgYWxsb3dlZD8g
SWYgbm90LCBob3cgd291bGQgd2UgcmVhY2gNCj4NCj4gVGhpcyBpcyBkZWZlbnNpdmUuIE9ubHkg
YWxsb3dzIHRvIG1hcCB3aXRoIERNQV9BVFRSX0NDX1NIQVJFRCBzZXQgdG8NCj4gZGV2IGRldiB0
aGF0IGRvZXMgbm90IHN1cHBvcnQgQ0MgbmF0aXZlbHkuIFRoaXMgY2FuIGJlIG9mIGNvdXJzZSBs
aWZ0ZWQsDQo+IGlmIHlvdSBoYXZlIGEgY2FzZS4NCj4NCj4NCj4+dGhlIGNvbmRpdGlvbmFsIGJl
bG93IHdoZXJlIHdlIGNvbnZlcnQgdGhlIHBoeXNpY2FsIGFkZHJlc3MgdG8gYSBETUENCj4+YWRk
cmVzcyB1c2luZyBwaHlzX3RvX2RtYV91bmVuY3J5cHRlZCgpPy4gQWxzbywgaG93IGlzIHRoaXMg
c3VwcG9zZWQgdG8NCj4+aW50ZXJhY3Qgd2l0aCBpc19zd2lvdGxiX2ZvcmNlX2JvdW5jZSgpP+KA
nQ0KPg0KPiBZb3UgcmVhY2ggdGhlcmUgd2hlbiBpc19zd2lvdGxiX2ZvcmNlX2JvdW5jZShkZXYp
IGlzIHRydWUgYW5kDQo+IERNQV9BVFRSX0NDX1NIQVJFRCBpcyBzZXQuIFdoYXQgYW0gSSBtaXNz
aW5nPw0KPg0KDQpTbyBhIHN3aW90bGJfZm9yY2VfYm91bmNlIHdpbGwgbm90IHVzZSBzd2lvdGxi
IGJvdW5jaW5nIGlmDQpETUFfQVRUUl9DQ19TSEFSRUQgaXMgc2V0ID8gDQoNCj4NCj4NCj4+DQo+
Pj4gIA0KPj4+ICAJaWYgKGF0dHJzICYgRE1BX0FUVFJfTU1JTykgew0KPj4+ICAJCWRtYV9hZGRy
ID0gcGh5czsNCj4+PiAgCQlpZiAodW5saWtlbHkoIWRtYV9jYXBhYmxlKGRldiwgZG1hX2FkZHIs
IHNpemUsIGZhbHNlKSkpDQo+Pj4gIAkJCWdvdG8gZXJyX292ZXJmbG93Ow0KPj4+ICsJfSBlbHNl
IGlmIChhdHRycyAmIERNQV9BVFRSX0NDX1NIQVJFRCkgew0KPj4+ICsJCWRtYV9hZGRyID0gcGh5
c190b19kbWFfdW5lbmNyeXB0ZWQoZGV2LCBwaHlzKTsNCj4+PiArCQlpZiAodW5saWtlbHkoIWRt
YV9jYXBhYmxlKGRldiwgZG1hX2FkZHIsIHNpemUsIGZhbHNlKSkpDQo+Pj4gKwkJCWdvdG8gZXJy
X292ZXJmbG93Ow0KPj4+ICAJfSBlbHNlIHsNCj4+PiAgCQlkbWFfYWRkciA9IHBoeXNfdG9fZG1h
KGRldiwgcGh5cyk7DQo+Pj4gIAkJaWYgKHVubGlrZWx5KCFkbWFfY2FwYWJsZShkZXYsIGRtYV9h
ZGRyLCBzaXplLCB0cnVlKSkgfHwNCj4+DQoNCi1hbmVlc2gNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
