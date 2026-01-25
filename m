Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IepGmIpdmm/MgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 25 Jan 2026 15:32:02 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C1280FE8
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 25 Jan 2026 15:32:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 404AD4015B
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 25 Jan 2026 14:32:00 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 2D39F3F708
	for <linaro-mm-sig@lists.linaro.org>; Sun, 25 Jan 2026 14:31:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WTkvRXxY;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B754F60018;
	Sun, 25 Jan 2026 14:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EA87C4CEF1;
	Sun, 25 Jan 2026 14:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769351508;
	bh=zOgHA3zT5qhfU5Vq32Czc4u+R9VVf3Wq9HUKcNzPAUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WTkvRXxYCq4rqRUu+Nur148XeKAbzwYqqq8/4hg4ggEgXsF+jL1OM7oJidh+/dg6C
	 daVMADVeejXPxRnV8zcl3+D83OEtOX43pZ8Ima/DfvRmwEiKYYZhPYl+Fwf2T7VZa7
	 iPrzbYqAQG+kUMC7eWSkJTjO2EoCAHTnrxob+QZ+JmLQYyLa7Pd5C1QmdP9eTj32Lg
	 /3ErVTrVEwYm8QER1ULPCTDnxeIFvlEIjc/jSqH0wcRlTwaWJmFSJpmRzY+8pLKD70
	 99rBtzDkK3iF7OOmyg90juuFBs0DSKYQmrOa3Mhu37AJHVuOgGmBesMjrKiCiwYJr0
	 Ni7TchE2YtFZg==
Date: Sun, 25 Jan 2026 16:31:43 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Edward Srouji <edwards@nvidia.com>
Message-ID: <20260125143143.GF13967@unreal>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: HHVTVYUVZITM4WV2SO7FZAZZNXYNFEFH
X-Message-ID-Hash: HHVTVYUVZITM4WV2SO7FZAZZNXYNFEFH
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 1/2] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HHVTVYUVZITM4WV2SO7FZAZZNXYNFEFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 94C1280FE8
X-Rspamd-Action: no action

T24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMDE6MTE6MTRQTSArMDIwMCwgRWR3YXJkIFNyb3VqaSB3
cm90ZToNCj4gRnJvbTogWWlzaGFpIEhhZGFzIDx5aXNoYWloQG52aWRpYS5jb20+DQo+IA0KPiBF
eHBvc2UgRE1BQlVGIGZ1bmN0aW9uYWxpdHkgdG8gdXNlcnNwYWNlIHRocm91Z2ggdGhlIHV2ZXJi
cyBpbnRlcmZhY2UsDQo+IGVuYWJsaW5nIEluZmluaUJhbmQvUkRNQSBkZXZpY2VzIHRvIGV4cG9y
dCBQQ0kgYmFzZWQgbWVtb3J5IHJlZ2lvbnMNCj4gKGUuZy4gZGV2aWNlIG1lbW9yeSkgYXMgRE1B
QlVGIGZpbGUgZGVzY3JpcHRvcnMuIFRoaXMgYWxsb3dzDQo+IHplcm8tY29weSBzaGFyaW5nIG9m
IFJETUEgbWVtb3J5IHdpdGggb3RoZXIgc3Vic3lzdGVtcyB0aGF0IHN1cHBvcnQgdGhlDQo+IGRt
YS1idWYgZnJhbWV3b3JrLg0KPiANCj4gQSBuZXcgVVZFUkJTX09CSkVDVF9ETUFCVUYgb2JqZWN0
IHR5cGUgYW5kIGFsbG9jYXRpb24gbWV0aG9kIHdlcmUNCj4gaW50cm9kdWNlZC4NCj4gDQo+IER1
cmluZyBhbGxvY2F0aW9uLCB1dmVyYnMgaW52b2tlcyB0aGUgZHJpdmVyIHRvIHN1cHBseSB0aGUN
Cj4gcmRtYV91c2VyX21tYXBfZW50cnkgYXNzb2NpYXRlZCB3aXRoIHRoZSBnaXZlbiBwYWdlIG9m
ZnNldCAocGdvZmYpLg0KPiANCj4gQmFzZWQgb24gdGhlIHJldHVybmVkIHJkbWFfdXNlcl9tbWFw
X2VudHJ5LCB1dmVyYnMgcmVxdWVzdHMgdGhlIGRyaXZlcg0KPiB0byBwcm92aWRlIHRoZSBjb3Jy
ZXNwb25kaW5nIHBoeXNpY2FsLW1lbW9yeSBkZXRhaWxzIGFzIHdlbGwgYXMgdGhlDQo+IGRyaXZl
cuKAmXMgUENJIHByb3ZpZGVyIGluZm9ybWF0aW9uLg0KPiANCj4gVXNpbmcgdGhpcyBpbmZvcm1h
dGlvbiwgZG1hX2J1Zl9leHBvcnQoKSBpcyBjYWxsZWQ7IGlmIGl0IHN1Y2NlZWRzLA0KPiB1b2Jq
LT5vYmplY3QgaXMgc2V0IHRvIHRoZSB1bmRlcmx5aW5nIGZpbGUgcG9pbnRlciByZXR1cm5lZCBi
eSB0aGUNCj4gZG1hLWJ1ZiBmcmFtZXdvcmsuDQo+IA0KPiBUaGUgZmlsZSBkZXNjcmlwdG9yIG51
bWJlciBmb2xsb3dzIHRoZSBzdGFuZGFyZCB1dmVyYnMgYWxsb2NhdGlvbiBmbG93LA0KPiBidXQg
dGhlIGZpbGUgcG9pbnRlciBjb21lcyBmcm9tIHRoZSBkbWEtYnVmIHN1YnN5c3RlbSwgaW5jbHVk
aW5nIGl0cyBvd24NCj4gZm9wcyBhbmQgcHJpdmF0ZSBkYXRhLg0KPiANCj4gQmVjYXVzZSBvZiB0
aGlzLCBhbGxvY19iZWdpbl9mZF91b2JqZWN0KCkgbXVzdCBoYW5kbGUgY2FzZXMgd2hlcmUNCj4g
ZmRfdHlwZS0+Zm9wcyBpcyBOVUxMLCBhbmQgYm90aCBhbGxvY19jb21taXRfZmRfdW9iamVjdCgp
IGFuZA0KPiBhbGxvY19hYm9ydF9mZF91b2JqZWN0KCkgbXVzdCBhY2NvdW50IGZvciB3aGV0aGVy
IGZpbHAtPnByaXZhdGVfZGF0YQ0KPiBleGlzdHMsIHNpbmNlIGl0IGlzIG9ubHkgcG9wdWxhdGVk
IGFmdGVyIGEgc3VjY2Vzc2Z1bCBkbWFfYnVmX2V4cG9ydCgpLg0KPiANCj4gV2hlbiBhbiBtbWFw
IGVudHJ5IGlzIHJlbW92ZWQsIHV2ZXJicyBpdGVyYXRlcyBvdmVyIGl0cyBhc3NvY2lhdGVkDQo+
IERNQUJVRnMsIG1hcmtzIHRoZW0gYXMgcmV2b2tlZCwgYW5kIGNhbGxzIGRtYV9idWZfbW92ZV9u
b3RpZnkoKSBzbyB0aGF0DQo+IHRoZWlyIGltcG9ydGVycyBhcmUgbm90aWZpZWQuDQo+IA0KPiBU
aGUgc2FtZSBwcm9jZWR1cmUgYXBwbGllcyBkdXJpbmcgdGhlIGRpc2Fzc29jaWF0ZSBmbG93OyBm
aW5hbCBjbGVhbnVwDQo+IG9jY3VycyB3aGVuIHRoZSBhcHBsaWNhdGlvbiBjbG9zZXMgdGhlIGZp
bGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZaXNoYWkgSGFkYXMgPHlpc2hhaWhAbnZpZGlhLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogRWR3YXJkIFNyb3VqaSA8ZWR3YXJkc0BudmlkaWEuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgfCAgIDEgKw0KPiAgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvZGV2aWNlLmMgICAgICAgICAg
ICAgICAgICB8ICAgMiArDQo+ICBkcml2ZXJzL2luZmluaWJhbmQvY29yZS9pYl9jb3JlX3V2ZXJi
cy5jICAgICAgICAgIHwgIDE5ICsrKw0KPiAgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvcmRtYV9j
b3JlLmMgICAgICAgICAgICAgICB8ICA2MyArKysrLS0tLQ0KPiAgZHJpdmVycy9pbmZpbmliYW5k
L2NvcmUvcmRtYV9jb3JlLmggICAgICAgICAgICAgICB8ICAgMSArDQo+ICBkcml2ZXJzL2luZmlu
aWJhbmQvY29yZS91dmVyYnMuaCAgICAgICAgICAgICAgICAgIHwgIDEwICsrDQo+ICBkcml2ZXJz
L2luZmluaWJhbmQvY29yZS91dmVyYnNfc3RkX3R5cGVzX2RtYWJ1Zi5jIHwgMTcyICsrKysrKysr
KysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvaW5maW5pYmFuZC9jb3JlL3V2ZXJic191YXBpLmMg
ICAgICAgICAgICAgfCAgIDEgKw0KPiAgaW5jbHVkZS9yZG1hL2liX3ZlcmJzLmggICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgOSArKw0KPiAgaW5jbHVkZS9yZG1hL3V2ZXJic190eXBlcy5o
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICBpbmNsdWRlL3VhcGkvcmRtYS9pYl91
c2VyX2lvY3RsX2NtZHMuaCAgICAgICAgICAgIHwgIDEwICsrDQo+ICAxMSBmaWxlcyBjaGFuZ2Vk
LCAyNjMgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pDQoNCjwuLi4+DQoNCj4gK3N0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKg0KPiArdXZlcmJzX2RtYWJ1Zl9tYXAoc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNobWVudCwNCj4gKwkJICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXIpDQo+ICt7DQo+ICsJc3RydWN0IGliX3V2ZXJic19kbWFidWZfZmlsZSAqcHJpdiA9IGF0dGFj
aG1lbnQtPmRtYWJ1Zi0+cHJpdjsNCj4gKw0KPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKHByaXYt
PmRtYWJ1Zi0+cmVzdik7DQo+ICsNCj4gKwlpZiAocHJpdi0+cmV2b2tlZCkNCj4gKwkJcmV0dXJu
IEVSUl9QVFIoLUVOT0RFVik7DQo+ICsNCj4gKwlyZXR1cm4gZG1hX2J1Zl9waHlzX3ZlY190b19z
Z3QoYXR0YWNobWVudCwgcHJpdi0+cHJvdmlkZXIsDQo+ICsJCQkJICAgICAgICZwcml2LT5waHlz
X3ZlYywgMSwgcHJpdi0+cGh5c192ZWMubGVuLA0KPiArCQkJCSAgICAgICBkaXIpOw0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgdm9pZCB1dmVyYnNfZG1hYnVmX3VubWFwKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaG1lbnQsDQo+ICsJCQkJc3RydWN0IHNnX3RhYmxlICpzZ3QsDQo+ICsJ
CQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQ0KPiArew0KPiArCWRtYV9idWZfZnJlZV9z
Z3QoYXR0YWNobWVudCwgc2d0LCBkaXIpOw0KPiArfQ0KDQpVbmZvcnR1bmF0ZWx5LCBpdCBpcyBu
b3QgZW5vdWdoLiBFeHBvcnRlcnMgc2hvdWxkIGNvdW50IHRoZWlyDQptYXA8LT51bm1hcCBjYWxs
cyBhbmQgbWFrZSBzdXJlIHRoYXQgdGhleSBhcmUgZXF1YWwuDQoNClNlZSB0aGlzIFZGSU8gY2hh
bmdlIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2t2bS8yMDI2MDEyNC1kbWFidWYtcmV2b2tlLXY1
LTQtZjk4ZmNhOTE3ZTk2QG52aWRpYS5jb20vDQoNClRoYW5rcw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
