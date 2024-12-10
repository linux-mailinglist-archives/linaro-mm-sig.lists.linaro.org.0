Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E80F9EAC65
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 10:37:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F8BE43F8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 09:37:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 98FB643F81
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2024 09:37:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=SYPqUAjI;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B50165C550D;
	Tue, 10 Dec 2024 09:36:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A1BC4CED6;
	Tue, 10 Dec 2024 09:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733823433;
	bh=H9GdWWxSQozv/mUkF3/jqCtHO65TOh5siE73iExwbnk=;
	h=Subject:To:Cc:From:Date:From;
	b=SYPqUAjItXisvgBF3JZ0CFIbQrhDDxprFrKhYivANR7Ak1USZMQj4cKHrm1EApikV
	 /Pz/jC3VA2N6MwC0eraf9D5MFFZanp6ad+sFtAFdeNJPqUiGAFgPnLJyd74KZpiWLE
	 YW9wtSY01KNFmwhbgaeoU74LcVZveyV+mS8J/PLk=
To: christian.koenig@amd.com,daniel.vetter@ffwll.ch,dri-devel@lists.freedesktop.org,friedrich.vock@gmx.de,gregkh@linuxfoundation.org,gustavo@padovan.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,tvrtko.ursulin@igalia.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 10 Dec 2024 10:35:53 +0100
Message-ID: <2024121053-riddance-respect-21fc@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore
X-Rspamd-Queue-Id: 98FB643F81
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,lists.freedesktop.org,gmx.de,linuxfoundation.org,padovan.org,lists.linaro.org,linaro.org,igalia.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZMSDIHD2VKIJ7KERZFBLMZULYL32VDEM
X-Message-ID-Hash: ZMSDIHD2VKIJ7KERZFBLMZULYL32VDEM
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma-fence: Fix reference leak on fence merge failure path" has been added to the 6.6-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZMSDIHD2VKIJ7KERZFBLMZULYL32VDEM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZG1hLWZlbmNlOiBGaXggcmVmZXJlbmNlIGxlYWsgb24gZmVu
Y2UgbWVyZ2UgZmFpbHVyZSBwYXRoDQoNCnRvIHRoZSA2LjYtc3RhYmxlIHRyZWUgd2hpY2ggY2Fu
IGJlIGZvdW5kIGF0Og0KICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgva2Vy
bmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkNCg0KVGhlIGZpbGVuYW1l
IG9mIHRoZSBwYXRjaCBpczoNCiAgICAgZG1hLWZlbmNlLWZpeC1yZWZlcmVuY2UtbGVhay1vbi1m
ZW5jZS1tZXJnZS1mYWlsdXJlLXBhdGgucGF0Y2gNCmFuZCBpdCBjYW4gYmUgZm91bmQgaW4gdGhl
IHF1ZXVlLTYuNiBzdWJkaXJlY3RvcnkuDQoNCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZlZWxz
IGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLA0KcGxlYXNlIGxldCA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4NCg0KDQo+RnJvbSA5NDkyOTFj
NTMxNDAwOWI0ZjZlMjUyMzkxZWRiYjQwZmRkNWQ1NDE0IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAw
MQ0KRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQpEYXRl
OiBGcmksIDE1IE5vdiAyMDI0IDEwOjIxOjQ5ICswMDAwDQpTdWJqZWN0OiBkbWEtZmVuY2U6IEZp
eCByZWZlcmVuY2UgbGVhayBvbiBmZW5jZSBtZXJnZSBmYWlsdXJlIHBhdGgNCk1JTUUtVmVyc2lv
bjogMS4wDQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgNCkNvbnRlbnQt
VHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQNCg0KRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGlnYWxpYS5jb20+DQoNCmNvbW1pdCA5NDkyOTFjNTMxNDAwOWI0ZjZlMjUyMzkxZWRi
YjQwZmRkNWQ1NDE0IHVwc3RyZWFtLg0KDQpSZWxlYXNlIGFsbCBmZW5jZSByZWZlcmVuY2VzIGlm
IHRoZSBvdXRwdXQgZG1hLWZlbmNlLWFycmF5IGNvdWxkIG5vdCBiZQ0KYWxsb2NhdGVkLg0KDQpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4N
CkZpeGVzOiAyNDVhNGE3YjUzMWMgKCJkbWEtYnVmOiBnZW5lcmFsaXplIGRtYV9mZW5jZSB1bndy
YXAgJiBtZXJnaW5nIHYzIikNCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IEd1c3Rhdm8gUGFk
b3ZhbiA8Z3VzdGF2b0BwYWRvdmFuLm9yZz4NCkNjOiBGcmllZHJpY2ggVm9jayA8ZnJpZWRyaWNo
LnZvY2tAZ214LmRlPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcNCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4wKw0KUmV2aWV3ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkxpbms6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDI0MTExNTEwMjE1
My4xOTgwLTItdHVyc3VsaW5AaWdhbGlhLmNvbQ0KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAgICAyICsrDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQ0KDQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQorKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQpAQCAtMTY0LDYgKzE2NCw4IEBA
IHJlc3RhcnQ6DQogCQkJCQlkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKSwNCiAJCQkJCTEsIGZh
bHNlKTsNCiAJaWYgKCFyZXN1bHQpIHsNCisJCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKQ0K
KwkJCWRtYV9mZW5jZV9wdXQoYXJyYXlbaV0pOw0KIAkJdG1wID0gTlVMTDsNCiAJCWdvdG8gcmV0
dXJuX3RtcDsNCiAJfQ0KDQoNClBhdGNoZXMgY3VycmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGlj
aCBtaWdodCBiZSBmcm9tIHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20gYXJlDQoNCnF1ZXVlLTYu
Ni9kbWEtZmVuY2UtdXNlLWtlcm5lbC1zLXNvcnQtZm9yLW1lcmdpbmctZmVuY2VzLnBhdGNoDQpx
dWV1ZS02LjYvZG1hLWJ1Zi1maXgtZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkLXY0LnBhdGNoDQpx
dWV1ZS02LjYvZG1hLWZlbmNlLWZpeC1yZWZlcmVuY2UtbGVhay1vbi1mZW5jZS1tZXJnZS1mYWls
dXJlLXBhdGgucGF0Y2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
