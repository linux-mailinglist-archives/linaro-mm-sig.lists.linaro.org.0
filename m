Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N3X9OXZfPWp12AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A09596C7ADB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=d8gUgG2V;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFEE94443B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:03:49 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id E60B53F789
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uLhabi92uESEf5CbIvCLvsknhXB/GOnAq3LQWEaLDYo=; b=d8gUgG2V7AXxtEPsjukDFsErlu
	ut4scQRKTbLBrqCV4UHQyt8dFGInJ8sQ0DiGmEd7VR7p3OqQuT2ZVLD/1LSUQdfw7hPyr5LWZYX3n
	8c9i6hsOZC1BGfQU7NcVUAW/2/m5fwggli4+ABsmd+hsB/o9ClaXG9GC0qwWqo6oDpZEjHzuAWfC+
	tTOe1cMRIz1qL0EDf2RSQQzW9NXef3V26Qfd6MK698xsHBPcKB4jP2sTobJUt+GvLAd+XfY3BxQta
	8NsM6/OrXw3TC8sgBTDpvQJZGGZQp1Pq+dPCjnivljRWXdNRxdXfynF0PONB9uVpcFq/Dt/kTZqgJ
	WN8vciRA==;
Received: from [37.209.163.134] (helo=[172.16.30.123])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1waHVb-00230t-8X; Thu, 18 Jun 2026 20:30:35 +0200
Message-ID: <27f54324-94ac-4bbc-ba58-642a314197d7@igalia.com>
Date: Thu, 18 Jun 2026 20:30:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20260618-linux-drm_crtc_fix-v1-1-801f29c9853d@linaro.org>
 <099959fa-3a41-4166-8c10-4e5c2b9fdf19@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@igalia.com>
In-Reply-To: <099959fa-3a41-4166-8c10-4e5c2b9fdf19@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IE52M2YG573YPPDQDL5SNJMQV6H6HTVS
X-Message-ID-Hash: IE52M2YG573YPPDQDL5SNJMQV6H6HTVS
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:03:04 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: use correct callback in dma_fence_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IE52M2YG573YPPDQDL5SNJMQV6H6HTVS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[166];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:andre.draszik@linaro.org,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,ursulin.net:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,igalia.com:email,igalia.com:mid,igalia.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A09596C7ADB

DQpPbiAxOC8wNi8yMDI2IDE0OjQ2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA2LzE4
LzI2IDE0OjAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToNCj4+IGRtYV9mZW5jZV90aW1lbGluZV9u
YW1lKCkgaXMgYSB3cmFwcGVyIGFyb3VuZA0KPj4gZG1hX2ZlbmNlX29wczo6Z2V0X3RpbWVsaW5l
X25hbWUoKS4gU2luY2UgdGhlIGJsYW1lZCBjb21taXQgYmVsb3csIGl0DQo+PiBjYWxscyBhbiBp
bmNvcnJlY3QgY2FsbGJhY2suDQo+Pg0KPj4gVXBkYXRlIGl0IHRvIHJlc3RvcmUgZnVuY3Rpb25h
bGl0eSBieSBjYWxsaW5nIHRoZSBpbnRlbmRlZCBjYWxsYmFjay4NCj4+DQo+PiBGaXhlczogNjI5
MTg1NDJiN2JmICgiZG1hLWZlbmNlOiBGaXggc3BhcnNlIHdhcm5pbmdzIGR1ZSBfX3JjdSBhbm5v
dGF0aW9ucyIpDQo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3pp
a0BsaW5hcm8ub3JnPg0KPiBJJ20gbGlrZSA5OSUgc3VyZSB3ZSBoYWQgdGhhdCBhbHJlYWR5IGZp
eGVkIHdlZWtzIGFnbywgYnV0IHNvbWVob3cgaXQgbG9va3MgbGlrZSB0aGF0IHdhcyBuZXZlciBt
ZXJnZWQgdG8gZHJtLW1pc2MtZml4ZXMuDQo+DQo+IEFueXdheSBSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpJIHdhcyBhbHNvIHBlcnBs
ZXhlZCBhbmQgdG9vayBtZSBzb21lIGRpZ2dpbmcgdG8gcmVhbGlzZSB3aGF0IGhhZCBoYXBwZW5l
ZC4NCg0KVGhlIGNvcHktYW5kLXBhc3RlIGJ1ZyB3YXMgaW5kZWVkIG9yaWdpbmFsbHkgZml4ZWQg
aW46DQoNCmNvbW1pdCAwMzM1NTk0NzNkZDNiNTU1NThiNTM1YWEzN2I4ODQ4YzIwN2I1Y2JiDQpB
dXRob3I6wqAgwqAgwqBBa2FzaCBHb2VsIDxha2FzaC5nb2VsQGFybS5jb20+DQpBdXRob3JEYXRl
OiBUdWUgT2N0IDIxIDE3OjA5OjUxIDIwMjUgKzAxMDANCkNvbW1pdDrCoCDCoCDCoFR2cnRrbyBV
cnN1bGluIDx0dXJzdWxpbkB1cnN1bGluLm5ldD4NCkNvbW1pdERhdGU6IEZyaSBPY3QgMjQgMTY6
NTY6MzcgMjAyNSArMDEwMA0KDQogwqAgwqAgZG1hLWZlbmNlOiBGaXggc2FmZSBhY2Nlc3Mgd3Jh
cHBlciB0byBjYWxsIHRpbWVsaW5lIG5hbWUgbWV0aG9kDQoNCg0KQnV0IHdhYWF5IGJlZm9yZSB0
aGF0IEkgc2VudCBhIGZpeCBmb3Igc29tZXRoaW5nIGVsc2Ugd2hpY2ggdG91Y2hlZCANCnRob3Nl
IGxpbmVzIG5vdCBub3RpY2luZyB0aGUgY29weS1hbmQtcGFzdGUsIGZpeGluZyBhIGRpZmZlcmVu
dCBpc3N1ZS4gDQpUaGF0IG9uZSBob3dldmVyIHdhcyBub3QgbWVyZ2VkIHVudGlsIGVhcmxpZXIg
dGhpcyB5ZWFyOg0KDQpjb21taXQgNjI5MTg1NDJiN2JmMDg4NjBhNjBlYmJkZTc2NTQ0ODZlMGFj
MDc3Ng0KQXV0aG9yOsKgIMKgIMKgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxp
YS5jb20+DQpBdXRob3JEYXRlOiBNb24gSnVuIDE2IDE2OjU5OjUyIDIwMjUgKzAxMDANCkNvbW1p
dDrCoCDCoCDCoENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNv
bW1pdERhdGU6IE1vbiBGZWIgOSAxNDowNToyMCAyMDI2ICswMTAwDQoNCiDCoCDCoCBkbWEtZmVu
Y2U6IEZpeCBzcGFyc2Ugd2FybmluZ3MgZHVlIF9fcmN1IGFubm90YXRpb25zDQoNCk5vdGljZSB0
aGUgYXV0aG9yZWQgdnMgY29tbWl0ZWQgZGF0ZXMuDQoNCkkgZ3Vlc3MgaXQgd2FzIGEgc2lsZW50
IGNvbmZsaWN0IHdoaWNoIG92ZXJ3cm90ZSB0aGUgZWFybGllciBmaXggYW5kIA0KcmVzdG9yZSB0
aGUgY29weS1hbmQtcGFzdGUgYnVnLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPg0KPj4gLS0t
DQo+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKy0NCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Yw0KPj4gaW5kZXggYjNiZmE2OTQzYThlLi41MjkyZDcxNDQxOWIgMTAwNjQ0DQo+PiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPj4gQEAgLTEyMDIsNyArMTIwMiw3IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9m
ZW5jZV90aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4gICAgICAgICAg
LyogUkNVIHByb3RlY3Rpb24gaXMgcmVxdWlyZWQgZm9yIHNhZmUgYWNjZXNzIHRvIHJldHVybmVk
IHN0cmluZyAqLw0KPj4gICAgICAgICAgb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMp
Ow0KPj4gICAgICAgICAgaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKGZlbmNlKSkN
Cj4+IC0gICAgICAgICAgICAgICByZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilvcHMtPmdldF9k
cml2ZXJfbmFtZShmZW5jZSk7DQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIChjb25zdCBjaGFy
IF9fcmN1ICopb3BzLT5nZXRfdGltZWxpbmVfbmFtZShmZW5jZSk7DQo+PiAgICAgICAgICBlbHNl
DQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiAoY29uc3QgY2hhciBfX3JjdSAqKSJzaWduYWxl
ZC10aW1lbGluZSI7DQo+PiAgIH0NCj4+DQo+PiAtLS0NCj4+IGJhc2UtY29tbWl0OiBlMmNhZTAw
YzA1ZDE5NjQ5MWMzMTgxOTY3OTIyOTdmMmRmYmFhMDJjDQo+PiBjaGFuZ2UtaWQ6IDIwMjYwNjE4
LWxpbnV4LWRybV9jcnRjX2ZpeC0yNjc2NTVhMWM4OWYNCj4+DQo+PiBCZXN0IHJlZ2FyZHMsDQo+
PiAtLQ0KPj4gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4NCj4+DQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
