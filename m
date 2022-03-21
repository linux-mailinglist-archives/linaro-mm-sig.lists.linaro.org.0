Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF48C4EBEF8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:39:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 320373EC36
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 10:39:51 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id C25EE3EF64
	for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Mar 2022 17:45:33 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B8B6C1F381;
	Mon, 21 Mar 2022 17:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1647884732; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=peglqrh0TeDc2F8OaZcmUkLDagjJhol7WzzofXyyxO4=;
	b=PnmDb1Bn2lmsEUIPSG3oXSY46IqI6iAnrhkUOd3imYGHhzUBGrywA4Q9uGXh7c/svUPKw5
	ngHuZu78cVggAJKMr47ybLtd326kLSE1NoNSHr9Gfg480gkY2G8m9HV1lQGRPPiKOrSgdz
	U10jIZn2E3ClJ36uP4+4GnMAPYs5WBQ=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id AB410139DB;
	Mon, 21 Mar 2022 17:45:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id uViIKLu5OGIeUQAAMHmgww
	(envelope-from <mkoutny@suse.com>); Mon, 21 Mar 2022 17:45:31 +0000
Date: Mon, 21 Mar 2022 18:45:30 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <20220321174530.GB9640@blackbody.suse.cz>
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-6-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220309165222.2843651-6-tjmercier@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MailFrom: mkoutny@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FL7HIEEEM5HNQ5CQBMMQPBMIDEESU5EM
X-Message-ID-Hash: FL7HIEEEM5HNQ5CQBMMQPBMIDEESU5EM
X-Mailman-Approved-At: Wed, 30 Mar 2022 10:39:44 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 5/8] dmabuf: Add gpu cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FL7HIEEEM5HNQ5CQBMMQPBMIDEESU5EM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8uDQoNCk9uIFdlZCwgTWFyIDA5LCAyMDIyIGF0IDA0OjUyOjE1UE0gKzAwMDAsICJULkou
IE1lcmNpZXIiIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ICtpbnQgZG1hX2J1Zl9j
aGFyZ2VfdHJhbnNmZXIoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGdwdWNnICpncHVj
ZykNCj4gK3sNCj4gKyNpZmRlZiBDT05GSUdfQ0dST1VQX0dQVQ0KPiArCXN0cnVjdCBncHVjZyAq
Y3VycmVudF9ncHVjZzsNCj4gKwlpbnQgcmV0ID0gMDsNCj4gKw0KPiArCS8qDQo+ICsJICogVmVy
aWZ5IHRoYXQgdGhlIGNncm91cCBvZiB0aGUgcHJvY2VzcyByZXF1ZXN0aW5nIHRoZSB0cmFuc2Zl
ciBpcyB0aGUNCj4gKwkgKiBzYW1lIGFzIHRoZSBvbmUgdGhlIGJ1ZmZlciBpcyBjdXJyZW50bHkg
Y2hhcmdlZCB0by4NCj4gKwkgKi8NCj4gKwljdXJyZW50X2dwdWNnID0gZ3B1Y2dfZ2V0KGN1cnJl
bnQpOw0KPiArCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7DQo+ICsJaWYgKGN1cnJlbnRfZ3B1
Y2cgIT0gZG1hYnVmLT5ncHVjZykgew0KPiArCQlyZXQgPSAtRVBFUk07DQo+ICsJCWdvdG8gZXJy
Ow0KPiArCX0NCg0KQWRkIGEgc2hvcnRjdXQgZm9yIGdwdWNnID09IGN1cnJlbnRfZ3B1Y2c/DQoN
Cj4gKw0KPiArCXJldCA9IGdwdWNnX3RyeV9jaGFyZ2UoZ3B1Y2csIGRtYWJ1Zi0+Z3B1Y2dfZGV2
LCBkbWFidWYtPnNpemUpOw0KPiArCWlmIChyZXQpDQo+ICsJCWdvdG8gZXJyOw0KPiArDQo+ICsJ
ZG1hYnVmLT5ncHVjZyA9IGdwdWNnOw0KPiArDQo+ICsJLyogdW5jaGFyZ2UgdGhlIGJ1ZmZlciBm
cm9tIHRoZSBjZ3JvdXAgaXQncyBjdXJyZW50bHkgY2hhcmdlZCB0by4gKi8NCj4gKwlncHVjZ191
bmNoYXJnZShjdXJyZW50X2dwdWNnLCBkbWFidWYtPmdwdWNnX2RldiwgZG1hYnVmLT5zaXplKTsN
Cg0KSSB0aGluayBncHVjZ18qIEFQSSB3b3VsZCBuZWVkIHRvIGNhdGVyIGZvciBzdWNoIHRyYW5z
ZmVycyB0b28gc2luY2UNCnBvc3NpYmx5IHRyYW5zaXRpb25hbCBicmVhY2ggb2YgYSBsaW1pdCBk
dXJpbmcgdGhlIHRyYW5zZmVyIG1heQ0KdW5uZWNlc3NhcmlseSBmYWlsIHRoZSBvcGVyYXRpb24u
DQoNCk15IDAuMDLigqwsDQpNaWNoYWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
