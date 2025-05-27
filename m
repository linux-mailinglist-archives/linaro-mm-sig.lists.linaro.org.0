Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E69AC522C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:35:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E22F145594
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 15:35:54 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id AA71045014
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 15:35:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=akLQa5OC;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 19A5160EDF;
	Tue, 27 May 2025 15:35:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F66DC4CEE9;
	Tue, 27 May 2025 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748360141;
	bh=P5uYW1+BYzkmCtbQHSQ4bMG2SL4jxxefuIb5mq+pu+8=;
	h=Subject:To:Cc:From:Date:From;
	b=akLQa5OCppbYCepokUX+fVr8gOTHWrswLFWu4ytjCfyKd6NrZTG+0OmUtYG8z8iOz
	 qp54asb+rIVrqwnRhHXJqJm0WPTuABUJ+XqC/U20IBt1r45Vs0NZTB7cKPAeCJwAzq
	 4G5VL7sil4kfgkery4pvIm3xJ+gTt3CZGUSiQhCI=
To: airlied@gmail.com,andyshrk@163.com,asrivats@redhat.com,boris.brezillon@collabora.com,christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,linaro-mm-sig@lists.linaro.org,maarten.lankhorst@linux.intel.com,mripard@kernel.org,simona.vetter@ffwll.ch,simona@ffwll.ch,sumit.semwal@linaro.org,tzimmermann@suse.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 27 May 2025 17:35:11 +0200
Message-ID: <2025052710-turtle-litigate-d36c@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,163.com,redhat.com,collabora.com,amd.com,lists.freedesktop.org,linuxfoundation.org,lists.linaro.org,linux.intel.com,kernel.org,ffwll.ch,linaro.org,suse.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Queue-Id: AA71045014
X-Spamd-Bar: /
Message-ID-Hash: PZ3AS7FGJFXKPKREFKEFXKT7IJY2SY3P
X-Message-ID-Hash: PZ3AS7FGJFXKPKREFKEFXKT7IJY2SY3P
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "drm/gem: Internally test import_attach for imported objects" has been added to the 6.12-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PZ3AS7FGJFXKPKREFKEFXKT7IJY2SY3P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZHJtL2dlbTogSW50ZXJuYWxseSB0ZXN0IGltcG9ydF9hdHRh
Y2ggZm9yIGltcG9ydGVkIG9iamVjdHMNCg0KdG8gdGhlIDYuMTItc3RhYmxlIHRyZWUgd2hpY2gg
Y2FuIGJlIGZvdW5kIGF0Og0KICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgv
a2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkNCg0KVGhlIGZpbGVu
YW1lIG9mIHRoZSBwYXRjaCBpczoNCiAgICAgZHJtLWdlbS1pbnRlcm5hbGx5LXRlc3QtaW1wb3J0
X2F0dGFjaC1mb3ItaW1wb3J0ZWQtb2JqZWN0cy5wYXRjaA0KYW5kIGl0IGNhbiBiZSBmb3VuZCBp
biB0aGUgcXVldWUtNi4xMiBzdWJkaXJlY3RvcnkuDQoNCklmIHlvdSwgb3IgYW55b25lIGVsc2Us
IGZlZWxzIGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLA0KcGxlYXNl
IGxldCA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4NCg0KDQo+RnJvbSA4
MjYwNzMxY2NhZDA0NTEyMDdiNDU4NDRiYjY2ZWIxNjFhMjA5MjE4IE1vbiBTZXAgMTcgMDA6MDA6
MDAgMjAwMQ0KRnJvbTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpE
YXRlOiBXZWQsIDE2IEFwciAyMDI1IDA4OjU3OjQ1ICswMjAwDQpTdWJqZWN0OiBkcm0vZ2VtOiBJ
bnRlcm5hbGx5IHRlc3QgaW1wb3J0X2F0dGFjaCBmb3IgaW1wb3J0ZWQgb2JqZWN0cw0KTUlNRS1W
ZXJzaW9uOiAxLjANCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOA0KQ29u
dGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdA0KDQpGcm9tOiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4NCg0KY29tbWl0IDgyNjA3MzFjY2FkMDQ1MTIwN2I0NTg0NGJi
NjZlYjE2MWEyMDkyMTggdXBzdHJlYW0uDQoNClRlc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0Lmlt
cG9ydF9hdHRhY2ggdG8gZGV0ZWN0IGltcG9ydGVkIG9iamVjdHMuDQoNCkR1cmluZyBvYmplY3Qg
Y2xlbmFudXAsIHRoZSBkbWFfYnVmIGZpZWxkIG1pZ2h0IGJlIE5VTEwuIFRlc3RpbmcgaXQgaW4N
CmFuIG9iamVjdCdzIGZyZWUgY2FsbGJhY2sgdGhlbiBpbmNvcnJlY3RseSBkb2VzIGEgY2xlYW51
cCBhcyBmb3IgbmF0aXZlDQpvYmplY3RzLiBIYXBwZW5zIGZvciBjYWxscyB0byBkcm1fbW9kZV9k
ZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0DQpjbGVhcnMgdGhlIGRtYV9idWYgZmllbGQgaW4gZHJt
X2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hX2J1Zl9mcmVlKCkuDQoNCnYzOg0KLSBvbmx5IHRlc3Qg
Zm9yIGltcG9ydF9hdHRhY2ggKEJvcmlzKQ0KdjI6DQotIHVzZSBpbXBvcnRfYXR0YWNoLmRtYWJ1
ZiBpbnN0ZWFkIG9mIGRtYV9idWYgKENocmlzdGlhbikNCg0KU2lnbmVkLW9mZi1ieTogVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpGaXhlczogYjU3YWE0N2QzOWU5ICgi
ZHJtL2dlbTogVGVzdCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBoZWxwZXIiKQ0KUmVw
b3J0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KQ2xvc2VzOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMzhkMDlkMzQuNDM1NC4xOTYzNzlhYTU2MC5Db3JlbWFp
bC5hbmR5c2hya0AxNjMuY29tLw0KVGVzdGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNv
bT4NCkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkNjOiBBbnVz
aGEgU3JpdmF0c2EgPGFzcml2YXRzQHJlZGhhdC5jb20+DQpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPg0KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogU2lt
b25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zw0KUmV2aWV3ZWQtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9y
YS5jb20+DQpSZXZpZXdlZC1ieTogU2ltb25hIFZldHRlciA8c2ltb25hLnZldHRlckBmZndsbC5j
aD4NCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA0MTYwNjU4MjAuMjYwNzYt
MS10emltbWVybWFubkBzdXNlLmRlDQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4g
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0tDQogaW5jbHVkZS9kcm0vZHJtX2dlbS5o
IHwgICAgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25z
KC0pDQoNCi0tLSBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KKysrIGIvaW5jbHVkZS9kcm0vZHJt
X2dlbS5oDQpAQCAtNTgwLDggKzU4MCw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX29i
amVjdF9pc19zaGENCiAgKi8NCiBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9pc19pbXBvcnRl
ZChjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCiB7DQotCS8qIFRoZSBkbWEtYnVm
J3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsIEdFTSBvYmplY3QuICovDQotCXJl
dHVybiBvYmotPmRtYV9idWYgJiYgKG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBvYmopOw0KKwlyZXR1
cm4gISFvYmotPmltcG9ydF9hdHRhY2g7DQogfQ0KIA0KICNpZmRlZiBDT05GSUdfTE9DS0RFUA0K
DQoNClBhdGNoZXMgY3VycmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGljaCBtaWdodCBiZSBmcm9t
IHR6aW1tZXJtYW5uQHN1c2UuZGUgYXJlDQoNCnF1ZXVlLTYuMTIvZHJtLWdlbS1pbnRlcm5hbGx5
LXRlc3QtaW1wb3J0X2F0dGFjaC1mb3ItaW1wb3J0ZWQtb2JqZWN0cy5wYXRjaA0KcXVldWUtNi4x
Mi9kcm0tYXN0LWZpbmQtdmJpb3MtbW9kZS1mcm9tLXJlZ3VsYXItZGlzcGxheS1zaXplLnBhdGNo
DQpxdWV1ZS02LjEyL2RybS1nZW0tdGVzdC1mb3ItaW1wb3J0ZWQtZ2VtLWJ1ZmZlcnMtd2l0aC1o
ZWxwZXIucGF0Y2gNCnF1ZXVlLTYuMTIvZHJtLWF0b21pYy1jbGFyaWZ5LXRoZS1ydWxlcy1hcm91
bmQtZHJtX2F0b21pY19zdGF0ZS5wYXRjaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
