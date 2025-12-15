Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANfFMCsJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C42411564
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E37E404EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:07:06 +0000 (UTC)
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	by lists.linaro.org (Postfix) with ESMTPS id 861793F6A2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 12:25:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=MFNtC9o7;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dVK5Q3lJFz9scD;
	Mon, 15 Dec 2025 13:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1765801514; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gJOFMp1/K+qQ0MSqjWn/CbbRaLJJuaP23xTo6CU3FMU=;
	b=MFNtC9o7GDr77G4gP5pdlWOgQeeiKPzkDClg8L2DPLsenZjXbBPFNYiW+f7Yt3dIHPmQyP
	OJMvPnvOPIvbcMj8jkup2nPMtdqY9haLsfcz/IxOV2J03K4sDF356sDyQ23TsGQ07TViaD
	FhWOVrJMTFcJ9CeKh2BEanhmBKLu/puWhJkeqyz5IF7MKc0wDX6+LpZo37kPzrx07UbVHu
	/SrGIEw9Yb9k6R4DHidfnQwttDmp8t0gODXRNwKwn1DjYqW3hsQZd1gJ97ZgepaPr9lGGF
	Kb4b3/HsX4GoqvHqXz/IOEsaMsqC0j4WmS+EX3sDV8DayQFJEqKPzO/PssjTDQ==
Message-ID: <1f0fd860bf3466b9967d5a99ecd49eb93e0f7a19.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Linux AMDGPU
 <amd-gfx@lists.freedesktop.org>,  Linux DRI Development
 <dri-devel@lists.freedesktop.org>, Linux Filesystems Development
 <linux-fsdevel@vger.kernel.org>,  Linux Media
 <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org,
 kasan-dev@googlegroups.com,  Linux Virtualization
 <virtualization@lists.linux.dev>, Linux Memory Management List
 <linux-mm@kvack.org>, Linux Network Bridge <bridge@lists.linux.dev>, Linux
 Networking <netdev@vger.kernel.org>
Date: Mon, 15 Dec 2025 13:24:46 +0100
In-Reply-To: <20251215113903.46555-13-bagasdotme@gmail.com>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
	 <20251215113903.46555-13-bagasdotme@gmail.com>
MIME-Version: 1.0
X-MBO-RS-META: q9aiurnjorghwoz79fww7b6wqkkf5zeq
X-MBO-RS-ID: ca016de3dd37ac937be
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DYRKNHQGC6RRSU4VV4SFWKABKNPQYKG4
X-Message-ID-Hash: DYRKNHQGC6RRSU4VV4SFWKABKNPQYKG4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:45 +0000
CC: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Eugenio =?ISO-8859-1?Q?P=E9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
 , Uladzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vla
 stimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 12/14] drm/scheduler: Describe @result in drm_sched_job_done()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYRKNHQGC6RRSU4VV4SFWKABKNPQYKG4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[2931];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.931];
	RCPT_COUNT_GT_50(0.00)[86];
	FREEMAIL_CC(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mailbox.org:mid]
X-Rspamd-Queue-Id: 65C42411564
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

bml0IGFib3V0IGNvbW1pdCB0aXRsZToNCldlIHVzZSAiZHJtL3NjaGVkOiIgYXMgcHJlZml4IG5v
d2FkYXlzDQoNCk9uIE1vbiwgMjAyNS0xMi0xNSBhdCAxODozOSArMDcwMCwgQmFnYXMgU2FuamF5
YSB3cm90ZToNCj4gU3BoaW54IHJlcG9ydHMga2VybmVsLWRvYyB3YXJuaW5nOg0KPiANCj4gV0FS
TklORzogLi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYzozNjcgZnVuY3Rp
b24gcGFyYW1ldGVyICdyZXN1bHQnIG5vdCBkZXNjcmliZWQgaW4gJ2RybV9zY2hlZF9qb2JfZG9u
ZScNCj4gDQo+IERlc2NyaWJlIEByZXN1bHQgcGFyYW1ldGVyIHRvIGZpeCBpdA0KPiANCg0KVGh4
IGZvciBmaXhpbmcgdGhpcyENCg0KPiAuDQo+IA0KPiBGaXhlczogNTM5ZjllZTRiNTJhOGIgKCJk
cm0vc2NoZWR1bGVyOiBwcm9wZXJseSBmb3J3YXJkIGZlbmNlIGVycm9ycyIpDQo+IFNpZ25lZC1v
ZmYtYnk6IEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90bWVAZ21haWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDEgKw0KPiDCoDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9tYWluLmMNCj4gaW5kZXggMWQ0ZjFiODIyZTdiNzYuLjRmODQ0MDg3ZmQ0OGViIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPiBAQCAtMzYxLDYgKzM2MSw3
IEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9ydW5fZnJlZV9xdWV1ZShzdHJ1Y3QgZHJtX2dwdV9z
Y2hlZHVsZXIgKnNjaGVkKQ0KPiDCoC8qKg0KPiDCoCAqIGRybV9zY2hlZF9qb2JfZG9uZSAtIGNv
bXBsZXRlIGEgam9iDQo+IMKgICogQHNfam9iOiBwb2ludGVyIHRvIHRoZSBqb2Igd2hpY2ggaXMg
ZG9uZQ0KPiArICogQHJlc3VsdDogam9iIHJlc3VsdA0KDQoiZXJyb3IgY29kZSBmb3IgdGhlIGpv
YidzIGZpbmlzaGVkLWZlbmNlIiB3b3VsZCBiZSBhIGJpdCBiZXR0ZXIgYW5kDQptb3JlIHZlcmJv
c2UuDQoNCldpdGggdGhhdDoNCg0KUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3Rh
QGtlcm5lbC5vcmc+DQoNCj4gwqAgKg0KPiDCoCAqIEZpbmlzaCB0aGUgam9iJ3MgZmVuY2UgYW5k
IHJlc3VibWl0IHRoZSB3b3JrIGl0ZW1zLg0KPiDCoCAqLw0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
