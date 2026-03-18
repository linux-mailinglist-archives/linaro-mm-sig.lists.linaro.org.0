Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBURJ4Nh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDE9431288
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A71703F82F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:21 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lists.linaro.org (Postfix) with ESMTPS id 1FDF23F75D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 10:58:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=tbaUXgEA;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 209.85.128.177 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-79a60975dc5so23527407b3.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 03:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773831537; cv=none;
        d=google.com; s=arc-20240605;
        b=heKdz7O8Obv4GLguioDYTc08dy3FZhjTAZ89wBFNBUcTy9UEHhsSk52r71QLwq61Al
         ggjbsSM1iLJg9RL78UkqD1j8gR13fWI4bzo2gRM7zsXV7zw4pEzLE1AFl66q42+0622c
         T75CN8WKLMYcKCGOooUx5IqY8exUBbXsYH6+M549jqJAwoA2Fh6rdva4YSdzbh77hQ9G
         baugoqDY2dBHxcWDLWu3hMA7hBVy4DCEq4uPqLUY1+B++tz1q8iuuou+HuXfEJJyehxy
         NbfMULt2Z3Z4AIFIU5dFywfUDR9e4cwJm3/T25tnwbQcoObvACsTGWPg7B2PuOqHFuOf
         wVYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LVVELEXkmiKTU/p+oy+of4jebFSUmNrxF9w9nex4moo=;
        fh=Ejnqy8XBiAVKz8boqOQ2hIgfFJomrcEbs36Prtf8rXA=;
        b=fV0BQp2dHsBCGj14cYoghnepHCih7sKxaS0vMuIvQCkC9P8L7hsbclw+tlGALtJJZ+
         58mJcpry08L+TZWwJ1xR0dApIgoeZvtJZo0b7rv86Np/kSagqrDaHbyJ7cblqjp33TTW
         9wMf9mfLU/j7JvI+Pq723eRbRneFeXgqrmgglByM80EuGccjJ6YbdgYHEAz1z67FI1sS
         wc/juZDa68ltOAM06VYm7gsVpd5K5LWINpDUbPpgC7gxwkGuzYXnty4ZxMeyJAYxYiAd
         +dHpLiwumKn+GOJ/f/AYMpeITp+OnsSH4cwHtslaUk+IEpM+kYEIM0WdoKmop4f0MOsP
         yQ2A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1773831537; x=1774436337; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVVELEXkmiKTU/p+oy+of4jebFSUmNrxF9w9nex4moo=;
        b=tbaUXgEApruZvlgtoqxB4LL3sZn6V/uFp2ztftq0DMR9Ev4ipX9SXJzU45y4kzPgbY
         nmXqSWNnTWjG1i0uPdzE93ErxcYEPrtsJRAM8B4+NUExaIa13UkHk5cy4ifYS4EOrgC0
         HrHEkDKq/KUVg7gz154WkMAjhhgJ719AZ1YDmU87HrY3umCOnE1EoxFMBEXyFzz5L8Cn
         6Vi5H3fEHMxN/BRsfYCQ8uxqbwjnDEQ3pr1vedLNm7UsByVH7zcX9e/uqizCtLGZG5z5
         L1BSw87YVAPCLIbekz1gL3qm9mEgfSej9mBDhI3K+y1bUai3ViiV2iWB0aerSToYdkDl
         G3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773831537; x=1774436337;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LVVELEXkmiKTU/p+oy+of4jebFSUmNrxF9w9nex4moo=;
        b=UwGODvjTvO6LyALRVgodtVbofQsNRwPYzhCsSg9Xb7UfzjFasMYDBlRKeTCzfjQoPO
         l1E3X0d5xalnUiUBM4gqCvIs1yg0Lkr7fbQq1plfQbdcVOcIKcrfyr2FJAeOUyGs5Z57
         Z7X1RdqKVl9tQZpxKPx0p5fAC5UMICSi5LXLlzv+4nLZlBPwC+wwLAdb/nrxVhmpudX6
         LSlF7q6440P2413JB59sDpXFdPMLhoONNBmH+hvqhEd7mFBNsMeDntauj4vZJUcZFpbM
         0z0BuPNosPJ3YgGDLHu5nqK4qtlgF7OWER/CbUEFcX5Q1xiN2kzl4YvaG8LZg4AdnLG+
         W6dA==
X-Forwarded-Encrypted: i=1; AJvYcCWxzjazmvSUk6ORFTL7u5vG2Ph4A1knmtp6uGsie1249yf+IlEjbuxP20y2lHfWWRExA8nytXr7SQSbMCax@lists.linaro.org
X-Gm-Message-State: AOJu0YzybszDL3UGUpi5hUuVSKbwqM2tDvyj21ol6vQ63SMqpr6rpIpj
	TM8YlWl5LrL9dMrTCJap/iQm1dEIe4RrUYkOl46a3h55mQBIFXaT+hI8B7yVrOi+JVUNHhl6oZw
	eTneWgOypu/FWA3d+rGzoM2tP8zdhdBe76NmJzgyHVA==
X-Gm-Gg: ATEYQzzSA/IERTE5Fdf7GppXqos6xotRwmaNuWbs/2MXaS2G1qSZJmS8CUkCJo8ryY6
	e/a8pWIUkPWoAWZu/AxqPwYF6P0xmKr/eYZopUO4jIBplhzwJEPThbyx5vCCWtBlAeDKLpHQ6Iz
	hiITIG4k6H1RK3wL5jzO4LdfVgz3yfo0vJMYyJrNvc27nguXPFW8DdmrdFzmXgWTZUW5rn5Cm1q
	VI+aZSENK9hiMAFzlnqzEJ5BcpOqCl19n1mAfXhn912ndi1xZQ3YWtGLLpp0p5mLGlxX4sl8KzY
	aTw5lvw=
X-Received: by 2002:a05:690c:c50e:b0:79a:3a33:933 with SMTP id
 00721157ae682-79a71ad413dmr29714557b3.31.1773831537485; Wed, 18 Mar 2026
 03:58:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com> <20260312112354.3dd99e36@gandalf.local.home>
 <219d015d-076b-4c80-8f63-88569115fdad@efficios.com> <20260312114041.5193c729@gandalf.local.home>
 <1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com> <CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
 <CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com>
 <20260312130255.6476e560@gandalf.local.home> <CAO7JXPgHYZ9zF1HFahb2447X85YRZCQQBHB6ihOwKSDtiZi8kQ@mail.gmail.com>
 <20260317120049.6a60fa88@gandalf.local.home> <6ca9f884-9566-4a82-9995-4c802a0bf8a0@efficios.com>
In-Reply-To: <6ca9f884-9566-4a82-9995-4c802a0bf8a0@efficios.com>
From: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Date: Wed, 18 Mar 2026 06:58:46 -0400
X-Gm-Features: AaiRm52iP799baA3h48fwfLjW02Pe87nEMlmDoXLIPKYRV2LFYQQkuww_KlSUU0
Message-ID: <CAO7JXPgbERfc_P+aPFB1+nR5ua3mZGbhdkbxCr0TFR4Cr6Khuw@mail.gmail.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
X-Spamd-Bar: ----
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LKR45YLOUVAXEC6TG3EIS24P4XL3KRBH
X-Message-ID-Hash: LKR45YLOUVAXEC6TG3EIS24P4XL3KRBH
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:19 +0000
CC: Steven Rostedt <rostedt@goodmis.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@
 kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jik
 os@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LKR45YLOUVAXEC6TG3EIS24P4XL3KRBH/>
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
	DATE_IN_PAST(1.00)[798];
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
	RCPT_COUNT_GT_50(0.00)[72];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[goodmis.org,gmail.com,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org, kernel.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.987];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bitbyteword.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,efficios.com:email,linaro.org:email]
X-Rspamd-Queue-Id: ECDE9431288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMTI6MDLigK9QTSBNYXRoaWV1IERlc25veWVycw0KPG1h
dGhpZXUuZGVzbm95ZXJzQGVmZmljaW9zLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDIwMjYtMDMtMTcg
MTI6MDAsIFN0ZXZlbiBSb3N0ZWR0IHdyb3RlOg0KPiA+IE9uIEZyaSwgMTMgTWFyIDIwMjYgMTA6
MDI6MzIgLTA0MDANCj4gPiBWaW5lZXRoIFJlbWFuYW4gUGlsbGFpIDx2aW5lZXRoQGJpdGJ5dGV3
b3JkLm9yZz4gd3JvdGU6DQo+ID4NCj4gPj4+DQo+ID4+PiBQZXJoYXBzOiBjYWxsX3RyYWNlX2Zv
bygpID8NCj4gPj4+DQo+ID4+IGNhbGxfdHJhY2VfZm9vIGhhcyBvbmUgY29sbGlzaW9uIHdpdGgg
dGhlIHRyYWNlcG9pbnQNCj4gPj4gc2NoZWRfdXBkYXRlX25yX3J1bm5pbmcgYW5kIGEgZnVuY3Rp
b24NCj4gPj4gY2FsbF90cmFjZV9zY2hlZF91cGRhdGVfbnJfcnVubmluZy4gSSBoYWQgY29uc2lk
ZXJlZCB0aGlzIGFuZCBsYXRlcg0KPiA+PiBtb3ZlZCB0byB0cmFjZV9pbnZva2VfZm9vKCkgYmVj
YXVzZSBvZiB0aGUgY29sbGlzaW9uLiBCdXQgSSBjYW4gcmVuYW1lDQo+ID4+IGNhbGxfdHJhY2Vf
c2NoZWRfdXBkYXRlX25yX3J1bm5pbmcgdG8gc29tZXRoaW5nIGVsc2UgaWYgY2FsbF90cmFjZV9m
b28NCj4gPj4gaXMgdGhlIGdlbmVyYWwgY29uc2Vuc3VzLg0KPiA+DQo+ID4gT0ssIHRoZW4gbGV0
cyBnbyB3aXRoOiB0cmFjZV9jYWxsX19mb28oKQ0KPiA+DQo+ID4gVGhlIGRvdWJsZSB1bmRlcnNj
b3JlIHNob3VsZCBwcmV2ZW50IGFueSBuYW1lIGNvbGxpc2lvbnMuDQo+ID4NCj4gPiBEb2VzIGFu
eW9uZSBoYXZlIGFuIG9iamVjdGlvbnM/DQo+IEknbSBPSyB3aXRoIGl0Lg0KPg0KR3JlYXQgdGhh
bmtzISBJIHNoYWxsIHNlbmQgYSB2MiB3aXRoIHMvdHJhY2VfaW52b2tlX2Zvby90cmFjZV9jYWxs
X19mb28vIHNvb24uDQoNClRoYW5rcywNClZpbmVldGgNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
