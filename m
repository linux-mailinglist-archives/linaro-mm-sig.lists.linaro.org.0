Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ON4oEWYJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3AD4115A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:08:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C66E404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:08:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id A130C3F820
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 04:18:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AZZrN+FP;
	spf=pass (lists.linaro.org: domain of jasowang@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765858697;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8DUjCNr/nxXg5R3wmw4ZM/MLoFfePhldzOpxojnv4JY=;
	b=AZZrN+FPgR7YhKUpptcO6O3YIbLDuYAvXTCkCRC1VfgKzUGdpb10LItb7SKNOSTOgRnSDf
	UGQ6ciNsUrI/y3jXuzU5n4mDZjCPtHma+dhM1+zP2QtcpaCoZzwaobdoX3wtW6mL4M7X8D
	seUFSGB82pZ4fgxfiVve1tjz9aKF+yo=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-392-yZGOlYSkOHi1IEpKzJcLYQ-1; Mon, 15 Dec 2025 23:18:14 -0500
X-MC-Unique: yZGOlYSkOHi1IEpKzJcLYQ-1
X-Mimecast-MFC-AGG-ID: yZGOlYSkOHi1IEpKzJcLYQ_1765858693
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-341616a6fb7so4616722a91.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 20:18:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765858693; x=1766463493;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8DUjCNr/nxXg5R3wmw4ZM/MLoFfePhldzOpxojnv4JY=;
        b=QcyfX4A3S0grGVvhnYMQZ4ip4Z3NcqVMlRwT3Dl3ZjEFOaK53kTjmV4nwZSvXPjrVl
         f6GKoiu7ZwUuSD40asxQm0vwbeM8/dlPu/zySdthd/oqxaAbO2bIm1UMN7vP2SC3j1jT
         rqdp1HOsGUlrUU9+H4VdaC5t3+4Kj6yaMySxAWo8d7YNIixnuFAp498y+asISpZ5WVv5
         UpC8EdpIPPauM7uD7sZgeQuDzPqK+Sf89BOX2I+E9UH81YilOuzuQ2C1sWfhWkgHnLeQ
         85JCk1FIhNbRO6pgn+bAdgzKv8hLVHIRYRxQoEPa/a7UUxyYyxFPu185Tn5FQz1zE8Mo
         ED1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfQtQROz4LUJC5OKv6FIOl385GJcVVCBx3AtTehIQIlaspWMr7xQtQE/eaOxtuA15ekMTbNpCtiHI0pzep@lists.linaro.org
X-Gm-Message-State: AOJu0YxzNAa1Bc5+Da70vdZP79/YsWgqdWxVz0pQ1bWQseTRhUGyqnG+
	u2DCJhuitDuZnZXrK9IBdvUdI7Prd5Ik6j2w/JQUegPItDasCy+qbqtEf6W1jsR7Pj7JYjbSmHg
	PGics7nrmDPDzpFPhk9dj3EH20V9qWoXwwV9goYAPnn9T947UpK4OGDrqQTwwrRGnVQ5sgzY+5d
	8SXMhCES59AxQAmFk9rwybzN1NobBM62NouO3N1CGQj28=
X-Gm-Gg: AY/fxX7gfe+gBtJ2iYRfr78jib4sxAfuQ1s+JGRGL5mr0+1iyqIiq9IT2zuTfefTo2e
	zsJdROzT2m6V06VhSQxg5qj4XcOjqc8Ssl8V1k4W05EKJOXcxqEizVXeKbWlCg1DHuQfMCzD4P+
	PptIhqC+8wT1E9QJsHOM4IzHgLn/IbiPmLlQXTALKmBoH1on5j+Oy/EmO7I19QxJGKSg==
X-Received: by 2002:a17:90b:2ccf:b0:340:f05a:3ec2 with SMTP id 98e67ed59e1d1-34abd81733amr14699633a91.17.1765858692995;
        Mon, 15 Dec 2025 20:18:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHD77DQk18dayngXtbIw3fsOCk15EBfDyLwaFsEN4158FtjFJzrWxy8+rjy6tA50q0hvVxRQAeZswAuqcmTXkc=
X-Received: by 2002:a17:90b:2ccf:b0:340:f05a:3ec2 with SMTP id
 98e67ed59e1d1-34abd81733amr14699535a91.17.1765858692536; Mon, 15 Dec 2025
 20:18:12 -0800 (PST)
MIME-Version: 1.0
References: <20251215113903.46555-1-bagasdotme@gmail.com> <20251215113903.46555-7-bagasdotme@gmail.com>
In-Reply-To: <20251215113903.46555-7-bagasdotme@gmail.com>
From: Jason Wang <jasowang@redhat.com>
Date: Tue, 16 Dec 2025 12:17:59 +0800
X-Gm-Features: AQt7F2q1idGMqOnPlq5afbA61NEyezJumJNhfdWiFdPMuPeC3DZ1U_cOOaqg6iI
Message-ID: <CACGkMEtJt7Df5kXWex8EoKdakdB8_xLjgCXQt5pUvk0dkGzVMA@mail.gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TYjH3UwZCuTrmvmtcFXypqD-iTOVf1KyefQ6pWVvHfw_1765858693
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: jasowang@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IQ3ZNIVUG5A6US453ETA2HPSTQHVOW3J
X-Message-ID-Hash: IQ3ZNIVUG5A6US453ETA2HPSTQHVOW3J
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:48 +0000
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux AMDGPU <amd-gfx@lists.freedesktop.org>, Linux DRI Development <dri-devel@lists.freedesktop.org>, Linux Filesystems Development <linux-fsdevel@vger.kernel.org>, Linux Media <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org, kasan-dev@googlegroups.com, Linux Virtualization <virtualization@lists.linux.dev>, Linux Memory Management List <linux-mm@kvack.org>, Linux Network Bridge <bridge@lists.linux.dev>, Linux Networking <netdev@vger.kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <
 dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George Shen <george.shen@amd.com>, A
 ric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, Luben Tuiko
 v <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/14] virtio: Describe @map and @vmap members in virtio_device struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IQ3ZNIVUG5A6US453ETA2HPSTQHVOW3J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[2915];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.860];
	RCPT_COUNT_GT_50(0.00)[85];
	FROM_NEQ_ENVFROM(0.00)[jasowang@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: EE3AD4115A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNzozOeKAr1BNIEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90
bWVAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gU3BoaW54IHJlcG9ydHMga2VybmVsLWRvYyB3YXJu
aW5nczoNCj4NCj4gV0FSTklORzogLi9pbmNsdWRlL2xpbnV4L3ZpcnRpby5oOjE4MSBzdHJ1Y3Qg
bWVtYmVyICdtYXAnIG5vdCBkZXNjcmliZWQgaW4gJ3ZpcnRpb19kZXZpY2UnDQo+IFdBUk5JTkc6
IC4vaW5jbHVkZS9saW51eC92aXJ0aW8uaDoxODEgc3RydWN0IG1lbWJlciAndm1hcCcgbm90IGRl
c2NyaWJlZCBpbiAndmlydGlvX2RldmljZScNCj4NCj4gRGVzY3JpYmUgdGhlc2UgbWVtYmVycy4N
Cj4NCj4gRml4ZXM6IGJlZThjN2MyNGI3MzczICgidmlydGlvOiBpbnRyb2R1Y2UgbWFwIG9wcyBp
biB2aXJ0aW8gY29yZSIpDQo+IFNpZ25lZC1vZmYtYnk6IEJhZ2FzIFNhbmpheWEgPGJhZ2FzZG90
bWVAZ21haWwuY29tPg0KPiAtLS0NCg0KQWNrZWQtYnk6IEphc29uIFdhbmcgPGphc293YW5nQHJl
ZGhhdC5jb20+DQoNClRoYW5rcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
