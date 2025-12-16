Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C7FCC3E37
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 16:21:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18A9D3F7D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 15:21:36 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id 1F82B3F7D7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 15:21:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=cqGT6Thh;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7b8c7a4f214so316312b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 07:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765898490; x=1766503290; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G6A3FJy1wSkXfE42mqpxDchsxNCyuEhZg+omH3hGmm4=;
        b=cqGT6Thh2CJ7ZYXgEfPZysj43KV346/IN+DVytWG/xtLQlP0n+w1LdlloJYi/t8uGl
         Z2LSmBlnS9Y6BkXhWd8wrFGXbvi5Q8vAG2C8Zclg0wJbqXL5Esl6I9EgZGhC2I/RSLgz
         PjawdLNdpp+NVXByeu5X2NxiShPTHC+d2j2ziCaucr4CyREcIuHu1gw9VesbBhWXrkIB
         eEScLC+F6abdzbpmmIH/kSr5URb+NvEv9r7XYQVkNM4bmOI2HWGTzq44GuD1ZNsYpadF
         AGeLjvkW4Unlmi+iYWhEJeVF1C/1L8xpg7vjO2Tuh8y0JaeoVAdhRBmaG/GCf1NbuoYU
         6BHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765898490; x=1766503290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G6A3FJy1wSkXfE42mqpxDchsxNCyuEhZg+omH3hGmm4=;
        b=fgpf8pkbM+U1RnN/dwD3XxKyKOtfW8gGXUIbRfHP3Kkdcjo1AguX9aeg5jrzrdRuM3
         s8VrACdSlumGQaxJVPXkCm8Tg2fPnuXGKiG90hywtiXHB0CRu983DpHsFv7cP05bnXbb
         81zv65+jYWiw/Veh13DKlvUrMHtotH8r3MdTTfPkEf91AVs2JUasEKC50TPgUqUrQvjt
         YLjwGMaTU0/6jIsJvNqSbV8WIngqM776jWOsOxXeS1nsg2rIxcHoMQnbyyNIEVpFVgp+
         KWx6HARlGLXVKNsQA1zW5hDTxqQOaDIRhfQBb1SSx5IbglitR6EqSjBP92o/7edhBIs3
         5caw==
X-Forwarded-Encrypted: i=1; AJvYcCU3cQYzZAXDaxHECQnB8urKQq/X6RXStOGzZjgBKiob+82B+OmFrOcWKtFJYSTafg2JYUdMkOoXdqjkJaVI@lists.linaro.org
X-Gm-Message-State: AOJu0YxDOEzhac1VfJNnVnAOUZeCVmUreCkFA4nYv7lyOZtXy33wQbQb
	Djzffozj2Lpvm6W6QgXod3MP1Y3CDeT+Z/O9YTqzr4ZEjCx6kmzHyM9m9rBFdppmS58Qpb/X6jm
	0ZfI0fG4jgmOboQbChyfeLyFqQuWktsI=
X-Gm-Gg: AY/fxX5opGqtjJeS2zdMR1HGBbf3PWFEst70rzXXpnGClgnIcFoZODJHDJhGSZV7+af
	muLhEtn/OgARwpr/+K0lW3aYdKP4bIEPLaJIaDOCuMa6lymyHisYZPJBs0X1YHdUNa6s1QB8PBi
	aWZa1/3+dnFm+V/05KV+zGY1g5pUszCmT4+1e5VOJHuAdkILQTtKOr2fqRDFst9hg4rA2b48DxV
	Va7hwbZN7j/aqDbMjow4X1v4vLe4UL6GONv67+Gkwo/eyQXm8AcjM7S4ci5mXKUU5u04u2Y
X-Google-Smtp-Source: AGHT+IFq0qaYbGK7y/3ERMab5mfBMJZm2RVpJeQ2PDWWvVrS9uWYHKl8nJo9NGLv/zMgaMY45LKm9slZF+vnfJuCU/o=
X-Received: by 2002:a05:7022:b98:b0:11e:3e9:3e89 with SMTP id
 a92af1059eb24-11f34c5d690mr6648024c88.7.1765898489968; Tue, 16 Dec 2025
 07:21:29 -0800 (PST)
MIME-Version: 1.0
References: <20251215113903.46555-1-bagasdotme@gmail.com> <20251215113903.46555-10-bagasdotme@gmail.com>
In-Reply-To: <20251215113903.46555-10-bagasdotme@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 16 Dec 2025 10:21:18 -0500
X-Gm-Features: AQt7F2rE8ID9d6NCh1LRY2rQdA6w_Kl1ZhHVictIiyXPuu3Pg_xadHkkj9RiiLU
Message-ID: <CADnq5_NsELxchDeka2CX1283p9mn4+P9_V9Mi+SNiWwM_sQepw@mail.gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org,amd.com,igalia.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,gmail.com,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail.gmail.com:mid,mail-pf1-f176.google.com:rdns,mail-pf1-f176.google.com:helo];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_GT_50(0.00)[85];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.210.176:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.176:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1F82B3F7D7
X-Spamd-Bar: ----
Message-ID-Hash: ERSQCQQSY7TL66BNM6IIIIZV5V5BYHTS
X-Message-ID-Hash: ERSQCQQSY7TL66BNM6IIIIZV5V5BYHTS
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux AMDGPU <amd-gfx@lists.freedesktop.org>, Linux DRI Development <dri-devel@lists.freedesktop.org>, Linux Filesystems Development <linux-fsdevel@vger.kernel.org>, Linux Media <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org, kasan-dev@googlegroups.com, Linux Virtualization <virtualization@lists.linux.dev>, Linux Memory Management List <linux-mm@kvack.org>, Linux Network Bridge <bridge@lists.linux.dev>, Linux Networking <netdev@vger.kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>, Philipp Stanner 
 <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, A
 ric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuiko
 v <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/14] drm/amd/display: Don't use kernel-doc comment in dc_register_software_state struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ERSQCQQSY7TL66BNM6IIIIZV5V5BYHTS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNjo0MeKAr0FNIEJh
Z2FzIFNhbmpheWEgPGJhZ2FzZG90bWVAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gU3BoaW54IHJl
cG9ydHMga2VybmVsLWRvYyB3YXJuaW5nOg0KPg0KPiBXQVJOSU5HOiAuL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvZGlzcGxheS9kYy9kYy5oOjI3OTYgVGhpcyBjb21tZW50IHN0YXJ0cyB3aXRoICcvKion
LCBidXQgaXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIHRvIERvY3VtZW50YXRpb24v
ZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0DQo+ICAqIFNvZnR3YXJlIHN0YXRlIHZhcmlhYmxlcyB1
c2VkIHRvIHByb2dyYW0gcmVnaXN0ZXIgZmllbGRzIGFjcm9zcyB0aGUgZGlzcGxheSBwaXBlbGlu
ZQ0KPg0KPiBEb24ndCB1c2Uga2VybmVsLWRvYyBjb21tZW50IHN5bnRheCB0byBmaXggaXQuDQo+
DQo+IEZpeGVzOiBiMGZmMzQ0ZmU3MGNkMiAoImRybS9hbWQvZGlzcGxheTogQWRkIGludGVyZmFj
ZSB0byBjYXB0dXJlIGV4cGVjdGVkIEhXIHN0YXRlIGZyb20gU1cgc3RhdGUiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBCYWdhcyBTYW5qYXlhIDxiYWdhc2RvdG1lQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvZGMuaCB8IDIgKy0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2RjLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvZGMvZGMuaA0KPiBpbmRleCAyOWVkZmE1MWVhMmNjMC4uMGE5NzU4YTA0MjU4NmYgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9kYy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9kYy5oDQo+IEBAIC0yNzkzLDcgKzI3OTMs
NyBAQCB2b2lkIGRjX2dldF91bmRlcmZsb3dfZGVidWdfZGF0YV9mb3Jfb3RnKHN0cnVjdCBkYyAq
ZGMsIGludCBwcmltYXJ5X290Z19pbnN0LCBzdA0KPg0KPiAgdm9pZCBkY19nZXRfcG93ZXJfZmVh
dHVyZV9zdGF0dXMoc3RydWN0IGRjICpkYywgaW50IHByaW1hcnlfb3RnX2luc3QsIHN0cnVjdCBw
b3dlcl9mZWF0dXJlcyAqb3V0X2RhdGEpOw0KPg0KPiAtLyoqDQo+ICsvKg0KPiAgICogU29mdHdh
cmUgc3RhdGUgdmFyaWFibGVzIHVzZWQgdG8gcHJvZ3JhbSByZWdpc3RlciBmaWVsZHMgYWNyb3Nz
IHRoZSBkaXNwbGF5IHBpcGVsaW5lDQo+ICAgKi8NCj4gIHN0cnVjdCBkY19yZWdpc3Rlcl9zb2Z0
d2FyZV9zdGF0ZSB7DQo+IC0tDQo+IEFuIG9sZCBtYW4gZG9sbC4uLiBqdXN0IHdoYXQgSSBhbHdh
eXMgd2FudGVkISAtIENsYXJhDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
