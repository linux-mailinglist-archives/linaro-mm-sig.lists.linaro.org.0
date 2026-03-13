Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OxsNQlg5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A135430FB6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3C1E404EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:19:04 +0000 (UTC)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	by lists.linaro.org (Postfix) with ESMTPS id 9E255402F5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2026 14:02:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=Y3Z76elC;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 74.125.224.54 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64ca423ad53so2382355d50.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2026 07:02:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773410565; cv=none;
        d=google.com; s=arc-20240605;
        b=b9LVX4zvB3QUB8AdDSj8qkQb8/XxHXj6aHVzMk2zFeAMrHkPvBFMyegDH6efREY7gu
         NYCJHElwIIAbGEQlgbebDtmK3TYM3M/NENG7ryb9ZA32xBvT4AgiIffoVs39F97w5HMX
         MCmGqigf9A0RwVRvBRq7PQFIyrWBWyEbtXkMeTo71FS21yK1qLvWzJ8KuSJvVNtCIuM+
         WfOKP2w/QSChhw5DdULVTOkUpgXNFvgOLMM1w1G6nEBpbSMm1DxzELYXEqJaFryNahRc
         jAuKgVKyDwHFAn+baVKQi/tVDcvoKPzSXmiIn2K3yZe8xnws9yYkUxr1qx6MqjFYQSFe
         VCkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=a7/dI9iHAkAoxpT/Y/jlrZ1Uk/u+tnKK+1+hPiLUJTk=;
        fh=GtDiHzaZrK7JFWEDuK1p3mmBmJZbHnZRXPD0Xw1DJHs=;
        b=YuyeQGVMmw1qGqBz9yPOmma15hsCBCJIJzelOZCz6NJ4Jh4IGrDnv2Ty9Yexu6aC5P
         bpyStgEIQlZ4i50yrXJEx/sE1T+mvFnmz+Fr4TJmxJr/7CrUT61nKwxGiZYwG2VcXZ9P
         9FK6qWHJeSH0MLQYg1EOKTcW82tAxcrjM1YmTb8jHRi1G6gOPJuJbL+3UX9mxiNKQgrC
         XuOTuVO6Er1DkhdJu6SeIdQUTvgKacapaG0U5+GRR+YrvHdPfkjELdzsWIsCU9sxaUDL
         NyT+/r11Lz11/VwNu08he6mumlykgB8NgdRay5rNIXi4REiEWcJiEjNwBL33bnU0yjQm
         Z/3A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1773410565; x=1774015365; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a7/dI9iHAkAoxpT/Y/jlrZ1Uk/u+tnKK+1+hPiLUJTk=;
        b=Y3Z76elCWfxMcnXE+VE7mXasdDve/65OKYrXsWeKXZe8BVUrV43nuK/4CnB2ejYDyv
         BFugRoy2H/KtKb6YTPnK/zvWrgZuyMPWfyS+5wrrWCCeYxlnDmqDcqRyd8a/TW8kopkq
         q8UeOwJRNc7uU5jZs2DRxp06hfiF+OMMLZ0kHhy3xd9M8RM4KR+VX1TqC8BsyZ5MBUDi
         jHHdrc+C4EldjCxPv5R2dSSVf5/Gz2aB9hn4hHZhRhnqL85uysTyytQ/Ojta1Qffy034
         j7hO+DMJGFYFq0BbS8zPMxD/jgAtWXajN7qDcJZpH45LxKDL8f9OKcPpJas14+gfQmHW
         DVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773410565; x=1774015365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a7/dI9iHAkAoxpT/Y/jlrZ1Uk/u+tnKK+1+hPiLUJTk=;
        b=cBnYPlAOIPO8gAqfVAp7iZde/Ri/yAQ8ATfhjoYuAYkvcj5IQv+2ex7J0JDGA6lt2k
         W+9Wh8AyPVoYOCg1jvE8NBaUQJCn/zYkw8XNA8+jwIMUAn1DuzJfHh8q0CLiJL5dTN/s
         1LxdVfnCbXSIQ3pi4PurYmdtHgQU7cVqrwHygxjNi7b6hzbRK+vG049JAv4+ox/Ibh6m
         AL3TO6prVkHXVBlZblAmgJz8ov4jyIOlfbJQWN248aIG8fGAGMoALAEHZIv0Qt9J3gF/
         DdJUZzXwQ+aPjkBXkYlWZnfsM/LkC2MmxOpOT9PC+FCvP1E1Im8pElK9TemwxjGLpCR0
         kZNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnDgK1gFtC14zryuxDd7ZIrsprjvboGs9/F7cKdCtwSB6lxn/5vK1W2aoOVaXmRH5uuyBEfgcZuavk3M6v@lists.linaro.org
X-Gm-Message-State: AOJu0Yx91JzY2N7k/84fRGE+jVerIBBarwnLgtwebshTrdjW3pf5dEBk
	jqc/dwtTd0eoPSd9BDimdqpuYqhQ471lAP2tGEE0ySeNBDk3WIkRtwquDQcILDIrZMmbpVBreQc
	FBF4osGECYco4dJ80ZC3/8w928R7vEBmAeke8Wa2m0w==
X-Gm-Gg: ATEYQzzj+qC0fFjI6hotlNzF9NAIRROe10TRPxc+ndVPNHwUq+6FpBzixwJdejPWRVk
	x5JXACRqGQZDiAHmq5iH2B9ANpEA3J/WGLKmFUCC0Xj9D7pc+lWJYJj2SjPKpacxnPd+Q3h9xEJ
	yBBQaBaY5tydvoJ0bXT2ulS3IiW6SbvConVz8E+6d+eAtbbsV7AKKdaAIeKoGnhG/p9jG1z91v0
	n2+S3YPt/yIWtzuqSsP0el/lIlBYVhRkGYw9SFUsKQY5AMiMmelDI/s3MbF8Delb8kk5MRJ79kw
	YoIJRvk=
X-Received: by 2002:a53:eccf:0:b0:64d:568b:bcb3 with SMTP id
 956f58d0204a3-64e62eeb40fmr2691449d50.9.1773410564388; Fri, 13 Mar 2026
 07:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com> <20260312112354.3dd99e36@gandalf.local.home>
 <219d015d-076b-4c80-8f63-88569115fdad@efficios.com> <20260312114041.5193c729@gandalf.local.home>
 <1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com> <CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
 <CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com> <20260312130255.6476e560@gandalf.local.home>
In-Reply-To: <20260312130255.6476e560@gandalf.local.home>
From: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Date: Fri, 13 Mar 2026 10:02:32 -0400
X-Gm-Features: AaiRm51K5Hc3O7_rOVK2jMiMzft9bvuP5pyZ-VF_j7db91GKvyylhuGDp34sRoA
Message-ID: <CAO7JXPgHYZ9zF1HFahb2447X85YRZCQQBHB6ihOwKSDtiZi8kQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Spamd-Bar: ----
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RMZNNM3LFTBYRNIMKNAHBHVU3UXXZQUM
X-Message-ID-Hash: RMZNNM3LFTBYRNIMKNAHBHVU3UXXZQUM
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:19 +0000
CC: Andrii Nakryiko <andrii.nakryiko@gmail.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wys
 ocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Ji
 ri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RMZNNM3LFTBYRNIMKNAHBHVU3UXXZQUM/>
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
	DATE_IN_PAST(1.00)[915];
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
	FREEMAIL_CC(0.00)[gmail.com,efficios.com,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.988];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 9A135430FB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTowM+KAr1BNIFN0ZXZlbiBSb3N0ZWR0IDxyb3N0ZWR0
QGdvb2RtaXMub3JnPiB3cm90ZToNCj4NCj4gT24gVGh1LCAxMiBNYXIgMjAyNiAwOTo1NDoyOSAt
MDcwMA0KPiBBbmRyaWkgTmFrcnlpa28gPGFuZHJpaS5uYWtyeWlrb0BnbWFpbC5jb20+IHdyb3Rl
Og0KPg0KPiA+ID4gPiBlbWl0X3RyYWNlX2ZvbygpDQo+ID4gPiA+IF9fdHJhY2VfZm9vKCkNCj4g
Pg0KPiA+IHRoaXMgc2VlbXMgbGlrZSB0aGUgYmVzdCBhcHByb2FjaCwgSU1PLiBkb3VibGUtdW5k
ZXJzY29yZWQgdmFyaWFudHMNCj4gPiBhcmUgdXN1YWxseSB1c2VkIGZvciBzb21lIHNwZWNpYWxp
emVkL2ludGVybmFsIHZlcnNpb24gb2YgYSBmdW5jdGlvbg0KPiA+IHdoZW4gd2Uga25vdyB0aGF0
IHNvbWUgY29uZGl0aW9ucyBhcmUgY29ycmVjdCAoZS5nLiwgbG9jayBpcyBhbHJlYWR5DQo+ID4g
dGFrZW4sIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQpLiBXaGljaCBmaXRzIGhlcmU6IHRyYWNlX3h4
eCgpIHdpbGwNCj4gPiBjaGVjayBpZiB0cmFjZXBvaW50IGlzIGVuYWJsZWQsIHdoaWxlIF9fdHJh
Y2VfeHh4KCkgd2lsbCBub3QgY2hlY2sgYW5kDQo+ID4ganVzdCBpbnZva2UgdGhlIHRyYWNlcG9p
bnQ/IEl0J3Mgc2hvcnQsIGl0J3MgZGlzdGluY3QsIGFuZCBpdCBzYXlzICJJDQo+ID4ga25vdyB3
aGF0IEkgYW0gZG9pbmciLg0KPg0KPiBIb25lc3RseSwgSSBjb25zaWRlciBkb3VibGUgdW5kZXJz
Y29yZSBhcyBpbnRlcm5hbCBvbmx5IGFuZCBub3Qgc29tZXRoaW5nDQo+IGFueW9uZSBidXQgdGhl
IHN1YnN5c3RlbSBtYWludGFpbmVycyB1c2UuDQo+DQo+IFRoaXMsIGlzIGEgbm9ybWFsIGZ1bmN0
aW9uIHdoZXJlIGl0J3MganVzdCBzYXlpbmc6IElmIHlvdSBoYXZlIGl0IGFscmVhZHkNCj4gZW5h
YmxlZCwgdGhlbiB5b3UgY2FuIHVzZSB0aGlzLiBUaHVzLCBJIGRvbid0IHRoaW5rIGl0IHF1YWxp
ZmllcyBhcyBhICJ5b3UNCj4ga25vdyB3aGF0IHlvdSBhcmUgZG9pbmciLg0KPg0KPiBQZXJoYXBz
OiBjYWxsX3RyYWNlX2ZvbygpID8NCj4NCmNhbGxfdHJhY2VfZm9vIGhhcyBvbmUgY29sbGlzaW9u
IHdpdGggdGhlIHRyYWNlcG9pbnQNCnNjaGVkX3VwZGF0ZV9ucl9ydW5uaW5nIGFuZCBhIGZ1bmN0
aW9uDQpjYWxsX3RyYWNlX3NjaGVkX3VwZGF0ZV9ucl9ydW5uaW5nLiBJIGhhZCBjb25zaWRlcmVk
IHRoaXMgYW5kIGxhdGVyDQptb3ZlZCB0byB0cmFjZV9pbnZva2VfZm9vKCkgYmVjYXVzZSBvZiB0
aGUgY29sbGlzaW9uLiBCdXQgSSBjYW4gcmVuYW1lDQpjYWxsX3RyYWNlX3NjaGVkX3VwZGF0ZV9u
cl9ydW5uaW5nIHRvIHNvbWV0aGluZyBlbHNlIGlmIGNhbGxfdHJhY2VfZm9vDQppcyB0aGUgZ2Vu
ZXJhbCBjb25zZW5zdXMuDQoNClRoYW5rcywNClZpbmVldGgNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
