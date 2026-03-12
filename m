Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFk1A6tf5mkWvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C0E430EBE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0D914046B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:17:29 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lists.linaro.org (Postfix) with ESMTPS id F20253F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 16:09:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=kMmoIGCr;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 209.85.128.175 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-7986c7b8076so13716117b3.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 09:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773331741; cv=none;
        d=google.com; s=arc-20240605;
        b=UxzJC5oPOeKTJFUac5fGzNO30ZQWPvQbkyXHaUxLvmEfZwHgNj7RLYyz3KGDfK5ZtS
         2lUUhlOzSiDSylJ/yIrVzGU4GPg9zzdDiEh7GDG4kLUn18Z9dNqUAQViR3pFg5W+9cJH
         WJY+9R1y8T3TdkGPFSuIur+5uSXJd8s/FOdnqh64OQ7QoKBv/Yq2xaVYbWSzeh5cnGOm
         6OwBiGGip/agwbV+reLUZ+9JUztUlApfvIr5/RAH3Pn5zY5c1AIkg5dUiLggSZspdnTk
         r7fOmov2dSfkPfmcq/dSdjZ5JXvIpbtFMQeTlZgPV4PvELUiGt6ucZVyD428tmIskCVQ
         q5Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kI5PTFr09piXXwe+dHgxbmefu5uh1N96l8rxcGpDT20=;
        fh=OlwjCyfLA4NtcDUw1jMorUUnbmVlUpNFl0xWtxp8RUw=;
        b=INyodBE9LWC+MfHV2Ht+B1FVZRSTK0Lq33NKTSlEeMS3hwTNhenPhZ93I1RXEzvOsh
         8vz6u2n2yua47/DRzbt8y1Aeb0+xBo1iqJupTnBP5waouB1cIs99Gz3bZRq/1YK3P2Vx
         g+wBDkE7V6Iuf3+HOdgWvy2EUzCknDcPbBvHLsdJN4qJhx2xUwU0bkFS09xl2s8XfXQg
         3apkeTucYapwY8ORK3e1YuYs+WuXIMGlu7cGeYWYcqnHEow1kSsVTyqsBSpltgJrTLnN
         WKWwBSjBxN3uNjO2zMWFgtZED+httQkHV8ZLYY9aRLqJvZ6tw9Ci9ZR5I23FSQEIw6Bg
         ARWA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1773331741; x=1773936541; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kI5PTFr09piXXwe+dHgxbmefu5uh1N96l8rxcGpDT20=;
        b=kMmoIGCrjsQFTp4BeOVpFEbcGTiEzqCufhOZ0LsQdRZcdR+bETWnn59ckOn0rH8H36
         LW05Z12ecEHX6R6iWXUT5Dp09RjeYt7gSNB/ZyGAjyBcbmDDEKWzUQ2vWsnTSXM+Cogb
         MTuzOg6yiSKMfA8zipI8sroDcgOIG16nR77SEM6J8/DWMT92MoE4XSVrUjK9uGFGvTFE
         0w4XnRpvTfVr5cQwBuIac6QmkaIOlVsnrgbAPqz39Hgd1PqO9QC6ULGHzFQlry3I+Rm0
         NXuhh+dGYrrUftzw98bvGipOT/JXOc1OvXE2iEnvM6rDlbpuZ2G70eIRP5+96FQ+JbVH
         on8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331741; x=1773936541;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kI5PTFr09piXXwe+dHgxbmefu5uh1N96l8rxcGpDT20=;
        b=XSGMFDPqiH0KHJlfIK81x8JsUIgTncdDgcI2YiwCFN2qi0v5o/Wc4iKFLLq8JvQRjh
         Ja1dgdmdCyWP2FMEQ1MB8yIaFOffRC2hh54A2659esFV04Nq+YHuCDvzZwA0STEzmnMy
         BYIZZp/1GQKPtPoPzKmUIS1Wwix9Sn8R7VDTpbgpltBskXo8KLKA27Rljb/OwNabc47J
         VM4c4XRYKd80aY8h19rqDTT12Qp9zqDSxRDw+x1BDMaAoXzkbofSn3fXej8Bc37ETSWE
         xs2fe8aXgTNt13j8IESyV3NWMTMb/3kfxxSZ/3ccl3J71sbmzcDTakMWcxKXoP8ltmnu
         jDwg==
X-Forwarded-Encrypted: i=1; AJvYcCUIgfq1ZWdXbGSkPPo3utIXLAr3Rs0DiS1X9ohN9HOMzSp78BG9Itzx9zXuIaZWSPhMrRHBy2de29shvFJm@lists.linaro.org
X-Gm-Message-State: AOJu0YyFSTOryJW98kqmvIIjtqVGkDK1WIDBVeoFQWyf7YnBs+iDw5gS
	RNKJDvWugNEooP3wS4IAHYfKgRbDzd5q6ka1AHKHotftK8VY5zCdnppsJUJcDM+XKn8CUlZe0Ov
	p+NmEy6sKDYJUFOu1BwIoi14K6UoziwYSfhQ/mwH2tQ==
X-Gm-Gg: ATEYQzzy5vmVAKi7sJSPvg25iGHREtEGuLLNtApjCXa0uC5eNdp+de0kqsYum5oHykS
	7HB6jii7qPQ+BexvNmUeoh16sedbJP222bCuqUrGesREDhlb4zpvLe2Qv4Fi8mjjXdwE7K2hw/E
	0JnVjltdmqqHIyH6juNwrOjBlpBdHjybYu6SRUQbuiSmZAtGVGNyecNRW+1ozGVbInFUvz55O88
	mqWA4n0cp9T1KF+GJmHQj/vFwisDq4f3LMhRH960vL0FuXTvK8d/q5SsZbwBnM60tTjN9dAfMKd
	4dfA92Y=
X-Received: by 2002:a05:690e:448d:b0:64a:e799:1d9c with SMTP id
 956f58d0204a3-64e63079bb0mr62693d50.60.1773331741406; Thu, 12 Mar 2026
 09:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com> <20260312112354.3dd99e36@gandalf.local.home>
 <219d015d-076b-4c80-8f63-88569115fdad@efficios.com> <20260312114041.5193c729@gandalf.local.home>
 <1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com>
In-Reply-To: <1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com>
From: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Date: Thu, 12 Mar 2026 12:08:49 -0400
X-Gm-Features: AaiRm50l09G2avZYKQas6kLTqrDst8ZjnHTnngudy3h6MyVa79lzABXaRh3Trz0
Message-ID: <CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
X-Spamd-Bar: ----
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6XUHGDURD3RAEFWQUMTLPFTDZG4Q4F4W
X-Message-ID-Hash: 6XUHGDURD3RAEFWQUMTLPFTDZG4Q4F4W
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:07 +0000
CC: Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linar
 o.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@k
 ernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6XUHGDURD3RAEFWQUMTLPFTDZG4Q4F4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[937];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[bitbyteword.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	RCPT_COUNT_GT_50(0.00)[71];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[goodmis.org,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linar o.org,amd.com,linux.intel.com,samsung.com,linaro.org,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,k ernel.org,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.999];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,efficios.com:url,efficios.com:email]
X-Rspamd-Queue-Id: B1C0E430EBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTE6NDnigK9BTSBNYXRoaWV1IERlc25veWVycw0KPG1h
dGhpZXUuZGVzbm95ZXJzQGVmZmljaW9zLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDIwMjYtMDMtMTIg
MTE6NDAsIFN0ZXZlbiBSb3N0ZWR0IHdyb3RlOg0KPiA+IE9uIFRodSwgMTIgTWFyIDIwMjYgMTE6
Mjg6MDcgLTA0MDANCj4gPiBNYXRoaWV1IERlc25veWVycyA8bWF0aGlldS5kZXNub3llcnNAZWZm
aWNpb3MuY29tPiB3cm90ZToNCj4gPg0KPiA+Pj4gTm90ZSwgVmluZWV0aCBjYW1lIHVwIHdpdGgg
dGhlIG5hbWluZy4gSSB3b3VsZCBoYXZlIGRvbmUgImRvIiBidXQgd2hlbiBJDQo+ID4+PiBzYXcg
Imludm9rZSIgSSB0aG91Z2h0IGl0IHNvdW5kZWQgYmV0dGVyLg0KPiA+Pg0KPiA+PiBJdCB3b3Jr
cyBhcyBsb25nIGFzIHlvdSBkb24ndCBoYXZlIGEgdHJhY2luZyBzdWJzeXN0ZW0gY2FsbGVkDQo+
ID4+ICJpbnZva2UiLCB0aGVuIHlvdSBnZXQgaW50byBpZGVudGlmaWVyIGNsYXNoIHRlcnJpdG9y
eS4NCj4gPg0KPiA+IFRydWUuIFBlcmhhcHMgd2Ugc2hvdWxkIGRvIHRoZSBkb3VibGUgdW5kZXJz
Y29yZSB0cmljay4NCj4gPg0KPiA+IEluc3RlYWQgb2Y6ICB0cmFjZV9pbnZva2VfZm9vKCkNCj4g
Pg0KPiA+IHVzZTogIHRyYWNlX2ludm9rZV9fZm9vKCkNCj4gPg0KPiA+DQo+ID4gV2hpY2ggd2ls
bCBtYWtlIGl0IG1vcmUgdmlzaWJsZSB0byB3aGF0IHRoZSB0cmFjZSBldmVudCBpcy4NCj4gPg0K
PiA+IEhtbSwgd2UgcHJvYmFibHkgc2hvdWxkIGhhdmUgdXNlZDogdHJhY2VfX2ZvbygpIGZvciBh
bGwgdHJhY2Vwb2ludHMsIGFzDQo+ID4gdGhlcmUncyBzdGlsbCBmdW5jdGlvbnMgdGhhdCBhcmUg
Y2FsbGVkIHRyYWNlX2ZvbygpIHRoYXQgYXJlIG5vdA0KPiA+IHRyYWNlcG9pbnRzIDotcA0KPg0K
PiBPbmUgY2VydGFpbiB3YXkgdG8gZWxpbWluYXRlIGlkZW50aWZpZXIgY2xhc2ggd291bGQgYmUg
dG8gZ28gZm9yIGENCj4gcHJlZml4IHRvICJ0cmFjZV8iLCBlLmcuDQo+DQo+IGRvX3RyYWNlX2Zv
bygpDQo+IGNhbGxfdHJhY2VfZm9vKCkNCg0KVGhpcyB3YXMgdGhlIGluaXRpYWwgaWRlYSwgYnV0
IGl0IGhhZCBjb25mbGljdCBpbiB0aGUgZXhpc3Rpbmcgc291cmNlOg0KY2FsbF90cmFjZV9zY2hl
ZF91cGRhdGVfbnJfcnVubmluZy4gZG9fdHJhY2VfIyNuYW1lIGFsc28gaGFkDQpjb2xsaXNpb25z
IHdoZW4gSSBjaGVja2VkLiBTbywgd2VudCB3aXRoIHRyYWNlX2ludm9rZV8jI25hbWUuIERpZCBu
b3QNCmNoZWNrIHJlc3Qgb2YgdGhlIHN1Z2dlc3Rpb25zIGhlcmUgdGhvdWdoLg0KDQpUaGFua3Ms
DQpWaW5lZXRoDQoNCj4gZW1pdF90cmFjZV9mb28oKQ0KPiBfX3RyYWNlX2ZvbygpDQo+IGludm9r
ZV90cmFjZV9mb28oKQ0KPiBkaXNwYXRjaF90cmFjZV9mb28oKQ0KPg0KPiBUaGFua3MsDQo+DQo+
IE1hdGhpZXUNCj4NCj4NCj4NCj4gLS0NCj4gTWF0aGlldSBEZXNub3llcnMNCj4gRWZmaWNpT1Mg
SW5jLg0KPiBodHRwczovL3d3dy5lZmZpY2lvcy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
