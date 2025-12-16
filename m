Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A6FCC3E0C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 16:20:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 281A9400F5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 15:20:26 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id B45D53F7D7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 15:20:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=arNY0sKj;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.214.173 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a110548f10so4216415ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 07:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765898421; x=1766503221; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Um9j1NvhAvuOmXHqodLfor6UadH2pWBjGMeLJlrrYrA=;
        b=arNY0sKjOHC7Y/zx4uqS5tih7xXKbp1vBDrTPOZC9YCd5dP1IwQYrvWky0wca6u6rh
         odFd9jLkdgCZt0qdJvk9Y5SrfLFxNZTykPn8TrRDyk7MTifu9qTqfBXBNabIv5STPyXu
         KkcgMX05uUD7OIvNKhsej0QNG4TklfP3QQayBzi4cJs+4hFTvIvZVZgYgTtVDW9FjLmm
         U6CjrSOkH2vfG22tXOsx/BGdlwTDtm8vT5m4iYtM1JZTIX8xbwVjQHoakk3cxw2DXCwv
         Din9Bk0GW4AbGTHrlzam1gTwS54SYrJ7aAgYj86j42JPDKzN/6tDVeMdktb4PZoEcBYl
         8rvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765898421; x=1766503221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Um9j1NvhAvuOmXHqodLfor6UadH2pWBjGMeLJlrrYrA=;
        b=jDPKrWIfDw0NVPjXFi2aPYWHGzjwzwwxBOxn+N/olkVrOgIaUgHIwrt/eOZSwd753y
         mySdu09UGa+ViSqSfr902QMKjKc5rGUEXNffnoUMQ6fpPjKgc43KoTIg6uiifAhfc++N
         d+p7oJiN6Etw30dvPiFfazk5zCsOucmimjPW8S8IeCHbNfgCOcbPfAQn3UG6bPLndXw0
         e2Ok7BIOT0/8DNPdxrYL1He3eqrHF/X0vbqTed/Kfco9SrQsIhpP4HhWzE7J9y+j/tzc
         N/4lmFjwtT6nf8tstzwwuBiDNop9NBcxQdT4c+g6rn4+HgYpvXKFUYeGg+jtdgE5ydBd
         bD/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWLddHP9lCa92ONf7asj9o364WXC17hbdzyVzaLf1ZTKLaJ9v9llQIfEzINT9xxjr93lTFa6T5EEQ/jbsgy@lists.linaro.org
X-Gm-Message-State: AOJu0YwUWxuTSwbYTVAnjjWKTJiANng50u9okMcaVMM3s9uQ027kpCF6
	nmWzUcV4tTGiTW3CEt5jSPOyj7yTcvTmAEFZ+4r5K/Kg3vO7YODzpDkvvx0DAE9DXrwYGyGCqz1
	tzPJc8nDCGDfXgDbhvuqwQKhztcQHHDk=
X-Gm-Gg: AY/fxX4qpHtx7UtE3dJecpgf42DefH6Jmix+hFEtV8oFIb3zvhSAE693op7cYEEWeDv
	NaxePI3OkXyDUhWWoz0bMO7W5AW8LQHB+RnTNL2iLVjt9XV6rg+Relzh44DRg/bkS6s//9kG0ps
	eeUKerdXUiKIvTwFXC8zULL9Vn74LidLgGVpwlemva38VlM3oIkbhlYfPXH/ylRUM6h7LwEsutW
	hd5EsSOzLzVkrEQqUPbqUhQGzbCqreUh+52HchOq6UMDdtnukA0NLzpHeqB6DKV4eAtiDJCSbaZ
	fcRybps=
X-Google-Smtp-Source: AGHT+IGYJpLwVd3WmfTCVN6vD/x/9T3gUFCIaNjQX2AnDfzywCiHaDROcEgCyN90fYOeDZvtNwbDXrs4JcvDTNG1WwM=
X-Received: by 2002:a05:7022:3a0d:b0:11e:3e9:3ea4 with SMTP id
 a92af1059eb24-11f34c52cc5mr5906109c88.6.1765898419103; Tue, 16 Dec 2025
 07:20:19 -0800 (PST)
MIME-Version: 1.0
References: <20251215113903.46555-1-bagasdotme@gmail.com> <20251215113903.46555-11-bagasdotme@gmail.com>
In-Reply-To: <20251215113903.46555-11-bagasdotme@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 16 Dec 2025 10:20:06 -0500
X-Gm-Features: AQt7F2ra4W4DJMCA0k4t80_q2saRqZRxc2HY97wTRTVoyOkAEkAv1EtqbtLiuMo
Message-ID: <CADnq5_P04522xETHty9hn5JO=mNbKSg3Pa68=u8cZ+JgNLt1Jg@mail.gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.173:from];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[mail-pl1-f173.google.com:rdns,mail-pl1-f173.google.com:helo];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_GT_50(0.00)[86];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.214.173:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B45D53F7D7
X-Spamd-Bar: ----
Message-ID-Hash: UFH47RSVJIRDRDCAPWTLULMXTLDI2AYU
X-Message-ID-Hash: UFH47RSVJIRDRDCAPWTLULMXTLDI2AYU
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux AMDGPU <amd-gfx@lists.freedesktop.org>, Linux DRI Development <dri-devel@lists.freedesktop.org>, Linux Filesystems Development <linux-fsdevel@vger.kernel.org>, Linux Media <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org, kasan-dev@googlegroups.com, Linux Virtualization <virtualization@lists.linux.dev>, Linux Memory Management List <linux-mm@kvack.org>, Linux Network Bridge <bridge@lists.linux.dev>, Linux Networking <netdev@vger.kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner 
 <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, A
 ric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuiko
 v <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/14] drm/amdgpu: Describe @AMD_IP_BLOCK_TYPE_RAS in amd_ip_block_type enum
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFH47RSVJIRDRDCAPWTLULMXTLDI2AYU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNjo0OOKAr0FNIEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90
bWVAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gU3BoaW54IHJlcG9ydHMga2VybmVsLWRvYyB3YXJu
aW5nOg0KPg0KPiBXQVJOSU5HOiAuL2RyaXZlcnMvZ3B1L2RybS9hbWQvaW5jbHVkZS9hbWRfc2hh
cmVkLmg6MTEzIEVudW0gdmFsdWUgJ0FNRF9JUF9CTE9DS19UWVBFX1JBUycgbm90IGRlc2NyaWJl
ZCBpbiBlbnVtICdhbWRfaXBfYmxvY2tfdHlwZScNCj4NCj4gRGVzY3JpYmUgdGhlIHZhbHVlIHRv
IGZpeCBpdC4NCj4NCj4gRml4ZXM6IDcxNjllNzA2YzgyZDdiICgiZHJtL2FtZGdwdTogQWRkIHJh
cyBtb2R1bGUgaXAgYmxvY2sgdG8gYW1kZ3B1IGRpc2NvdmVyeSIpDQo+IFNpZ25lZC1vZmYtYnk6
IEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90bWVAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvaW5jbHVkZS9hbWRfc2hhcmVkLmggfCAxICsNCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9p
bmNsdWRlL2FtZF9zaGFyZWQuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvaW5jbHVkZS9hbWRfc2hh
cmVkLmgNCj4gaW5kZXggMTc5NDUwOTRhMTM4MzQuLmQ4ZWQzNzk5NjQ5MTcyIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2luY2x1ZGUvYW1kX3NoYXJlZC5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvaW5jbHVkZS9hbWRfc2hhcmVkLmgNCj4gQEAgLTg5LDYgKzg5LDcg
QEAgZW51bSBhbWRfYXB1X2ZsYWdzIHsNCj4gICogQEFNRF9JUF9CTE9DS19UWVBFX1ZQRTogVmlk
ZW8gUHJvY2Vzc2luZyBFbmdpbmUNCj4gICogQEFNRF9JUF9CTE9DS19UWVBFX1VNU0NIX01NOiBV
c2VyIE1vZGUgU2NoZWR1bGVyIGZvciBNdWx0aW1lZGlhDQo+ICAqIEBBTURfSVBfQkxPQ0tfVFlQ
RV9JU1A6IEltYWdlIFNpZ25hbCBQcm9jZXNzb3INCj4gKyogQEFNRF9JUF9CTE9DS19UWVBFX1JB
UzogUkFTDQoNClJlbGlhYmlsaXR5LCBBdmFpbGFiaWxpdHksIFNlcnZpY2VhYmlsaXR5LiAgSSd2
ZSBmaXhlZCB0aGlzIHVwIGxvY2FsbHkNCmFuZCBhcHBsaWVkIHRoZSBwYXRjaC4NCg0KVGhhbmtz
LA0KDQpBbGV4DQoNCj4gICogQEFNRF9JUF9CTE9DS19UWVBFX05VTTogVG90YWwgbnVtYmVyIG9m
IElQIGJsb2NrIHR5cGVzDQo+ICAqLw0KPiAgZW51bSBhbWRfaXBfYmxvY2tfdHlwZSB7DQo+IC0t
DQo+IEFuIG9sZCBtYW4gZG9sbC4uLiBqdXN0IHdoYXQgSSBhbHdheXMgd2FudGVkISAtIENsYXJh
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
