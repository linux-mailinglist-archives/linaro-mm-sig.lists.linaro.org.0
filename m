Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50311C8B28D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 18:15:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 462583F7A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Nov 2025 17:15:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id E4DBD3F806
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 17:15:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=PgbNHHJD;
	spf=pass (lists.linaro.org: domain of maarten.lankhorst@linux.intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=maarten.lankhorst@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1764177302; x=1795713302;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=XpXTi22h1lQyNqutX7n5OVEjFZ0vyoINVMrIpbkzf1Y=;
  b=PgbNHHJD1zEsw//O1tL8npjgWsTcpshjep+Cc5u293Vn2oSawA3DaVPm
   7qiEpG3bjHMxDXF59kPAJkB0tntqAqpvW0AvPff/djxFUNjswcS/Bw0zP
   HfP1aF4yBarsC3nx61CobWY+vA3zsrEuaHgO7enAjzqaqpHGOMIHhlue1
   n5aQVux1o2lwIjzDhBXOUaFzNrhxnwlC7zEDIC5Bm7zR9/tV7onlDYJyZ
   oH93VTlAbrpoa2/gdT84qsuKUgjDKzWDHMx51sF8aNgI0AnwoMKyjhGOg
   kMGU8kdRYIs4f54YbiD3LMkQA4Ke+P0CuYJSBefNzB+YYiyzAgUuesa3d
   g==;
X-CSE-ConnectionGUID: zjZq9531RQSCSxJw++mR/Q==
X-CSE-MsgGUID: kp3xdln9R0qISmOv2AQtjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66254359"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="66254359"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 09:15:01 -0800
X-CSE-ConnectionGUID: T/rFJVtsTEW6SEEyte7elA==
X-CSE-MsgGUID: j5+qzM/uRhKhpwTkPVow6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800";
   d="scan'208";a="193007523"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO [10.245.245.194]) ([10.245.245.194])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2025 09:14:57 -0800
Message-ID: <702ac955-32ad-4f24-88cd-c98f9d2f2552@linux.intel.com>
Date: Wed, 26 Nov 2025 18:14:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251121101315.3585-1-pierre-eric.pelloux-prayer@amd.com>
 <20251121101315.3585-20-pierre-eric.pelloux-prayer@amd.com>
 <414584f0-3fdb-41e2-aa26-3776dc514184@amd.com>
 <7346d42b-3ad7-4170-900f-73d8ed356f71@linux.intel.com>
 <cc43a512-b979-4c11-a413-ab5108dab466@amd.com>
 <847eb5a7-7464-40f2-81ea-7bf2ff009a31@linux.intel.com>
 <b12b952b-1e32-439f-8d96-78e449cbbde7@amd.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <b12b952b-1e32-439f-8d96-78e449cbbde7@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:dkim,mgamail.intel.com:rdns,mgamail.intel.com:helo,linux.intel.com:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E4DBD3F806
X-Spamd-Bar: ------
Message-ID-Hash: YJBGQ65T2GZAGDHPFTZZK3X3QPGL27D4
X-Message-ID-Hash: YJBGQ65T2GZAGDHPFTZZK3X3QPGL27D4
X-MailFrom: maarten.lankhorst@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 19/28] drm/ttm: rework pipelined eviction fence handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJBGQ65T2GZAGDHPFTZZK3X3QPGL27D4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5LA0KDQpEZW4gMjAyNS0xMS0yNiBrbC4gMTY6NDgsIHNrcmV2IENocmlzdGlhbiBLw7ZuaWc6
DQo+IE9uIDExLzI2LzI1IDE2OjM5LCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToNCj4+IEhleSwN
Cj4+DQo+PiBEZW4gMjAyNS0xMS0yNiBrbC4gMTY6MzYsIHNrcmV2IENocmlzdGlhbiBLw7ZuaWc6
DQo+Pj4gT24gMTEvMjYvMjUgMTY6MzQsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOg0KPj4+PiBI
ZXksDQo+Pj4+DQo+Pj4+IERlbiAyMDI1LTExLTIxIGtsLiAxNjoxMiwgc2tyZXYgQ2hyaXN0aWFu
IEvDtm5pZzoNCj4+Pj4+IE9uIDExLzIxLzI1IDExOjEyLCBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllciB3cm90ZToNCj4+Pj4+PiBVbnRpbCBub3cgdHRtIHN0b3JlZCBhIHNpbmdsZSBwaXBlbGlu
ZWQgZXZpY3Rpb24gZmVuY2Ugd2hpY2ggbWVhbnMNCj4+Pj4+PiBkcml2ZXJzIGhhZCB0byB1c2Ug
YSBzaW5nbGUgZW50aXR5IGZvciB0aGVzZSBldmljdGlvbnMuDQo+Pj4+Pj4NCj4+Pj4+PiBUbyBs
aWZ0IHRoaXMgcmVxdWlyZW1lbnQsIHRoaXMgY29tbWl0IGFsbG93cyB1cCB0byA4IGVudGl0aWVz
IHRvDQo+Pj4+Pj4gYmUgdXNlZC4NCj4+Pj4+Pg0KPj4+Pj4+IElkZWFsbHkgYSBkbWFfcmVzdiBv
YmplY3Qgd291bGQgaGF2ZSBiZWVuIHVzZWQgYXMgYSBjb250YWluZXIgb2YNCj4+Pj4+PiB0aGUg
ZXZpY3Rpb24gZmVuY2VzLCBidXQgdGhlIGxvY2tpbmcgcnVsZXMgbWFrZXMgaXQgY29tcGxleC4N
Cj4+Pj4+PiBkbWFfcmVzdiBhbGwgaGF2ZSB0aGUgc2FtZSB3d19jbGFzcywgd2hpY2ggbWVhbnMg
IkF0dGVtcHRpbmcgdG8NCj4+Pj4+PiBsb2NrIG1vcmUgbXV0ZXhlcyBhZnRlciB3d19hY3F1aXJl
X2RvbmUuIiBpcyBhbiBlcnJvci4NCj4+Pj4+Pg0KPj4+Pj4+IE9uZSBhbHRlcm5hdGl2ZSBjb25z
aWRlcmVkIHdhcyB0byBpbnRyb2R1Y2VkIGEgMm5kIHd3X2NsYXNzIGZvcg0KPj4+Pj4+IHNwZWNp
ZmljIHJlc3YgdG8gaG9sZCBhIHNpbmdsZSAidHJhbnNpZW50IiBsb2NrICg9IHRoZSByZXN2IGxv
Y2sNCj4+Pj4+PiB3b3VsZCBvbmx5IGJlIGhlbGQgZm9yIGEgc2hvcnQgcGVyaW9kLCB3aXRob3V0
IHRha2luZyBhbnkgb3RoZXINCj4+Pj4+PiBsb2NrcykuDQo+Pj4+Pj4NCj4+Pj4+PiBUaGUgb3Ro
ZXIgb3B0aW9uLCBpcyB0byBzdGF0aWNhbGx5IHJlc2VydmUgYSBmZW5jZSBhcnJheSwgYW5kDQo+
Pj4+Pj4gZXh0ZW5kIHRoZSBleGlzdGluZyBjb2RlIHRvIGRlYWwgd2l0aCBOIGZlbmNlcywgaW5z
dGVhZCBvZiAxLg0KPj4+Pj4+DQo+Pj4+Pj4gVGhlIGRyaXZlciBpcyBzdGlsbCByZXNwb25zaWJs
ZSB0byByZXNlcnZlIHRoZSBjb3JyZWN0IG51bWJlcg0KPj4+Pj4+IG9mIGZlbmNlIHNsb3RzLg0K
Pj4+Pj4+DQo+Pj4+Pj4gLS0tDQo+Pj4+Pj4gdjI6DQo+Pj4+Pj4gLSBzaW1wbGlmaWVkIGNvZGUN
Cj4+Pj4+PiAtIGRyb3BwZWQgbl9mZW5jZXMNCj4+Pj4+PiAtIG5hbWUgY2hhbmdlcw0KPj4+Pj4+
IHYzOiB1c2UgdHRtX3Jlc291cmNlX21hbmFnZXJfY2xlYW51cA0KPj4+Pj4+IC0tLQ0KPj4+Pj4+
DQo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJy
ZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+Pj4+Pg0KPj4+Pj4gUmV2aWV3ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4+DQo+Pj4+
PiBHb2luZyB0byBwdXNoIHNlcGFyYXRlbHkgdG8gZHJtLW1pc2MtbmV4dCBvbiBNb25kYXkuDQo+
Pj4+Pg0KPj4+PiBQdXNoaW5nIHRoaXMgYnJva2UgZHJtLXRpcCwgdGhlIGFtZCBkcml2ZXIgZmFp
bHMgdG8gYnVpbGQsIGFzIGl0J3Mgbm90IHVzaW5nIHRoZSBldmljdGlvbl9mZW5jZXMgYXJyYXku
DQo+Pj4NCj4+PiBUaGFua3MgZm9yIHRoZSBub3RlISBCdXQgaHVpPyBXZSBjaGFuZ2VkIGFtZGdw
dSB0byBub3QgdG91Y2ggdGhlIG1vdmUgZmVuY2UuDQo+Pj4NCj4+PiBHaXZlIG1lIGEgc2Vjb25k
LmNvbW1pdCAxM2JlYzIxZjVmNGNkYWJkZjA2NzI1ZTVhOGRlZTBiOWI1NmZmNjcxIChIRUFEIC0+
IGRybS10aXAsIGRybS10aXAvZHJtLXRpcCwgZHJtLXRpcC9IRUFEKQ0KPj4NCj4+IEF1dGhvcjog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gRGF0ZTogICBX
ZWQgTm92IDI2IDEzOjEzOjAzIDIwMjUgKzAxMDANCj4+DQo+PiAgICAgZHJtLXRpcDogMjAyNXkt
MTFtLTI2ZC0xMmgtMTJtLTQxcyBVVEMgaW50ZWdyYXRpb24gbWFuaWZlc3QNCj4+DQo+PiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmM6MjE4ODozNDogZXJyb3I6IOKAmHN0
cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlcuKAmSBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmG1vdmXi
gJkNCj4+ICAyMTg4IHwgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQobWFuLT5tb3ZlKTsN
Cj4+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4NCj4+IGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYzoyMTg5OjIwOiBlcnJvcjog4oCYc3Ry
dWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2Vy4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYbW92ZeKA
mQ0KPj4gIDIxODkgfCAgICAgICAgICAgICAgICAgbWFuLT5tb3ZlID0gTlVMTDsNCj4+ICAgICAg
IHwgICAgICAgICAgICAgICAgICAgIF5+DQo+Pg0KPj4gSXMgd2hhdCBJIHNlZS4NCj4gDQo+IEFo
LCBjcmFwLCBJIGtub3cgd2hhdCdzIGdvaW5nIG9uLg0KPiANCj4gVGhlIHBhdGNoIHRvIHJlbW92
ZSB0aG9zZSBsaW5lcyBpcyBxdWV1ZWQgdXAgdG8gZ28gdXBzdHJlYW0gdGhyb3VnaCBhbWQtc3Rh
Z2luZy1kcm0tbmV4dCBpbnN0ZWFkIG9mIGRybS1taXNjLW5leHQuDQo+IA0KPiBJIHdpbGwgcHVz
aCB0aGlzIHBhdGNoIHRvIGRybS1taXNjLW5leHQgYW5kIHN5bmMgdXAgd2l0aCBBbGV4IHRoYXQg
aXQgc2hvdWxkbid0IGdvIHVwc3RyZWFtIHRocm91Z2ggYW1kLXN0YWdpbmctZHJtLW5leHQuDQo+
IA0KPiBHb2luZyB0byBidWlsZCB0ZXN0IGRybS10aXAgdGhlIG5leHQgdGltZS4NClRoYW5rIHlv
dSwgZHJtLXRpcCBub3cgYnVpbGRzIGNsZWFubHkgYWdhaW4hDQoNCj4gDQo+IFRoYW5rcywNCj4g
Q2hyaXN0aWFuLg0KPiANCj4gDQoNCktpbmQgcmVnYXJkcywNCn5NYWFydGVuIExhbmtob3JzdA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
