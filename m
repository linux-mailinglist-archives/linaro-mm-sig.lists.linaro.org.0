Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE79K7Bf5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE99430ECF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14270404EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:17:35 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id 786643F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 16:54:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=X6Si7kUo;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of andrii.nakryiko@gmail.com designates 209.85.216.53 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-359f35dfef6so729596a91.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 09:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773334483; cv=none;
        d=google.com; s=arc-20240605;
        b=PfDBAwHIAh/4sw5AbRbV6xqttBMwbhS0VwCZ0wr6+z7uchD1fkfu2rt02pBMAjklTU
         DLkbM0fqwKTK0PeZi6JiZb+o+A7z3bM6vEEtLQKhz0V2UGEkdqd6esAaxAlxfr+PBSv9
         VGyUg1QOqfPu8Ghr54BZWU8bbgJ8OsJSmHpcO3mglOZYa9DsrNHja9Z/3+2+k5AJbaAV
         oXgZSlABuweG2G1kQKM5E4Kr9eFr5sTZDHF+LqV8DqAnzf1iWtWcdsdxCzquRHmvFnQe
         5grmD7dm2NxNuAzT3h2e4FzFGvtyZqnwcqXkQkf/Q430HBjNdRtsdpG4D0tvdBy5r6Tp
         0bLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+kWy5KRAZzJ0k+gfnUe4+KiD3cukw8nZMNARL7dWDnQ=;
        fh=Lu7SneSSyv3b7gdBxSFHClmly4vcMh61Cfsmn89kNVo=;
        b=E1Gf5stTdAkQVxCOCylGc+oKB69HkFsQ5/7Tt9f4x+PLl+L+UwgoceIXd530zsbe9v
         MZSTOtW6wIAQ4wHTfEueFuaAYy0qhhfQpszFoWMjlScByGEXY6sQCjN3aQ3C5ZHuk8Ld
         4yduyP05PRoJaB620POE8lhpqg0r7nBotymm7vqWGyt9SjlwIK0Ea0RdCsFlN/sx2v0A
         aYhGSmgGHjNDCaXva9wTirPj9FzJuc1AvLIERU+BPg3MmHyg53LxKTVwbjgvO4rbrSNK
         lqW/617CLpwrTDKgVvnxRsG1sPBovEO2a9iII1SYW6JRQ3lRP5QHoLHuEAp8Xtn/DJi3
         1Vpg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773334483; x=1773939283; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+kWy5KRAZzJ0k+gfnUe4+KiD3cukw8nZMNARL7dWDnQ=;
        b=X6Si7kUol1byzypzDZENXyesqKLqTu0r9XcCSHEBJMuwEA2aDIDuxgX/ZxqJFHjpQb
         66d9SnWFxwA77lZek0IvkuGLalx1UAw31NWxcFzeHg1gcc3LsgblLe4KnamSacQ98IFo
         bF3pE6lwQAkU3rmqoQzNNMYDe1cxFjJJQ85HR93n18JwY1cHpeRlTsDA5IgClj+quZRn
         N7TMtq71kqsvONcpOL9uq5llPtc3tRQcCw2JGRxXhVMBoUU9oVlGEZ5foP0yx90gxqZi
         kcWmiWiZkJ83E9pPXs4V0cH23J2O3KGnxURGivpERnEgrLNf9zy/GwTder80qISPT6Ow
         27uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773334483; x=1773939283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+kWy5KRAZzJ0k+gfnUe4+KiD3cukw8nZMNARL7dWDnQ=;
        b=EjF8CoPedKDE8428jJbcd/FLs0jq3kNC1agw7Gaqsq496apCI9ea/NTU6wCfaOlp1b
         y6Sa04I7mTkrj9WXgD1ZB0oQ9ZzQ4yxTxWki82FZQRLPm8HSg2PaNX2tnKaVbn7MQ4kK
         tHV5dI9Tct29zOZDOq3nV1XE9Yi30vset8TszJfpArzb2PP+jLBvrrrYFx5HKzHulQaU
         AYNAT4CItZcOfP7zdd4mHKZRVvdRpXzEIkyRjcONqkZkxus9JjyaS/YjVdmyhX5fCBzM
         Cz/SJB5i70l/xWM6KsGFWw9S0NvYNMaDrNHePB4A/74qLJs9gS1kOJ6BUswTs5E1PJK3
         Y7dA==
X-Forwarded-Encrypted: i=1; AJvYcCX4mK/S6P3mozfaeX4woO1TO6OiwZLtM5LSrCEAN/leCmJV5wWd2GbjzEqr3aPgrcs/byo7H+5gbx/V2DeX@lists.linaro.org
X-Gm-Message-State: AOJu0YwpF045ZVV04V80mclTlzXWbAZjwmEq64s/kJSU2BBz5xyaLbCf
	2tWV+5YeWY6xUpz9YGgf4eduXs5iCJUYRd1IkQC/ld1Wxoka7nE4a1ax9WjHEkMA2nAHSRE8XPy
	gY6DoFufSoRUe1uhLbhRuE12h45qoE7c=
X-Gm-Gg: ATEYQzw2CxLwOuyvJ+1wh4xHvmK8aygz5jjrBMtUAlRtULkV2E1RUiLClh08Y3bhCh7
	d5bem1ZBHHAfO0HwQlp5d3cQqeOyuZ+75+D+nsDV7WTgL8r82lDLZo3HdO00LMFL/K8FF6uAXL8
	m96EGJHjbtfjl6j8FK2lU3par9Euk8FB4eNFNNsC/x6poxVaPzouFdxzNzyTsYGOLx4lSz2PyFq
	mJZ7m++bIt8U7rlmCtAbZsEDlp2NvAtICmCv8HgF37yaxw57KdWEp1pqEjasYW4kizww+qOlse3
	6Uu5IhSi4JQrCyT5S5vh9hk=
X-Received: by 2002:a17:90b:288e:b0:359:8d0d:5905 with SMTP id
 98e67ed59e1d1-35a21eba194mr250522a91.9.1773334483388; Thu, 12 Mar 2026
 09:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com> <20260312112354.3dd99e36@gandalf.local.home>
 <219d015d-076b-4c80-8f63-88569115fdad@efficios.com> <20260312114041.5193c729@gandalf.local.home>
 <1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com> <CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
In-Reply-To: <CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 12 Mar 2026 09:54:29 -0700
X-Gm-Features: AaiRm51tg7oVvkVGab0X55k0oYxIuUltKNvtNsrbO-Cw57of2y67mwv1ziUvJS0
Message-ID: <CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com>
To: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
X-Spamd-Bar: -----
X-MailFrom: andrii.nakryiko@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7NIALEFTP3GAJCA3FQD5463747B64F3F
X-Message-ID-Hash: 7NIALEFTP3GAJCA3FQD5463747B64F3F
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:08 +0000
CC: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <
 rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosi
 na <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7NIALEFTP3GAJCA3FQD5463747B64F3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[936];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_GT_50(0.00)[72];
	FROM_NEQ_ENVFROM(0.00)[andriinakryiko@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[efficios.com,goodmis.org,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,efficios.com:url,efficios.com:email,linaro.org:email,bitbyteword.org:email]
X-Rspamd-Queue-Id: 4FE99430ECF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgOToxNeKAr0FNIFZpbmVldGggUmVtYW5hbiBQaWxsYWkN
Cjx2aW5lZXRoQGJpdGJ5dGV3b3JkLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFRodSwgTWFyIDEyLCAy
MDI2IGF0IDExOjQ54oCvQU0gTWF0aGlldSBEZXNub3llcnMNCj4gPG1hdGhpZXUuZGVzbm95ZXJz
QGVmZmljaW9zLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiAyMDI2LTAzLTEyIDExOjQwLCBTdGV2
ZW4gUm9zdGVkdCB3cm90ZToNCj4gPiA+IE9uIFRodSwgMTIgTWFyIDIwMjYgMTE6Mjg6MDcgLTA0
MDANCj4gPiA+IE1hdGhpZXUgRGVzbm95ZXJzIDxtYXRoaWV1LmRlc25veWVyc0BlZmZpY2lvcy5j
b20+IHdyb3RlOg0KPiA+ID4NCj4gPiA+Pj4gTm90ZSwgVmluZWV0aCBjYW1lIHVwIHdpdGggdGhl
IG5hbWluZy4gSSB3b3VsZCBoYXZlIGRvbmUgImRvIiBidXQgd2hlbiBJDQo+ID4gPj4+IHNhdyAi
aW52b2tlIiBJIHRob3VnaHQgaXQgc291bmRlZCBiZXR0ZXIuDQo+ID4gPj4NCj4gPiA+PiBJdCB3
b3JrcyBhcyBsb25nIGFzIHlvdSBkb24ndCBoYXZlIGEgdHJhY2luZyBzdWJzeXN0ZW0gY2FsbGVk
DQo+ID4gPj4gImludm9rZSIsIHRoZW4geW91IGdldCBpbnRvIGlkZW50aWZpZXIgY2xhc2ggdGVy
cml0b3J5Lg0KPiA+ID4NCj4gPiA+IFRydWUuIFBlcmhhcHMgd2Ugc2hvdWxkIGRvIHRoZSBkb3Vi
bGUgdW5kZXJzY29yZSB0cmljay4NCj4gPiA+DQo+ID4gPiBJbnN0ZWFkIG9mOiAgdHJhY2VfaW52
b2tlX2ZvbygpDQo+ID4gPg0KPiA+ID4gdXNlOiAgdHJhY2VfaW52b2tlX19mb28oKQ0KPiA+ID4N
Cj4gPiA+DQo+ID4gPiBXaGljaCB3aWxsIG1ha2UgaXQgbW9yZSB2aXNpYmxlIHRvIHdoYXQgdGhl
IHRyYWNlIGV2ZW50IGlzLg0KPiA+ID4NCj4gPiA+IEhtbSwgd2UgcHJvYmFibHkgc2hvdWxkIGhh
dmUgdXNlZDogdHJhY2VfX2ZvbygpIGZvciBhbGwgdHJhY2Vwb2ludHMsIGFzDQo+ID4gPiB0aGVy
ZSdzIHN0aWxsIGZ1bmN0aW9ucyB0aGF0IGFyZSBjYWxsZWQgdHJhY2VfZm9vKCkgdGhhdCBhcmUg
bm90DQo+ID4gPiB0cmFjZXBvaW50cyA6LXANCj4gPg0KPiA+IE9uZSBjZXJ0YWluIHdheSB0byBl
bGltaW5hdGUgaWRlbnRpZmllciBjbGFzaCB3b3VsZCBiZSB0byBnbyBmb3IgYQ0KPiA+IHByZWZp
eCB0byAidHJhY2VfIiwgZS5nLg0KPiA+DQo+ID4gZG9fdHJhY2VfZm9vKCkNCj4gPiBjYWxsX3Ry
YWNlX2ZvbygpDQo+DQo+IFRoaXMgd2FzIHRoZSBpbml0aWFsIGlkZWEsIGJ1dCBpdCBoYWQgY29u
ZmxpY3QgaW4gdGhlIGV4aXN0aW5nIHNvdXJjZToNCj4gY2FsbF90cmFjZV9zY2hlZF91cGRhdGVf
bnJfcnVubmluZy4gZG9fdHJhY2VfIyNuYW1lIGFsc28gaGFkDQo+IGNvbGxpc2lvbnMgd2hlbiBJ
IGNoZWNrZWQuIFNvLCB3ZW50IHdpdGggdHJhY2VfaW52b2tlXyMjbmFtZS4gRGlkIG5vdA0KPiBj
aGVjayByZXN0IG9mIHRoZSBzdWdnZXN0aW9ucyBoZXJlIHRob3VnaC4NCj4NCj4gVGhhbmtzLA0K
PiBWaW5lZXRoDQo+DQo+ID4gZW1pdF90cmFjZV9mb28oKQ0KPiA+IF9fdHJhY2VfZm9vKCkNCg0K
dGhpcyBzZWVtcyBsaWtlIHRoZSBiZXN0IGFwcHJvYWNoLCBJTU8uIGRvdWJsZS11bmRlcnNjb3Jl
ZCB2YXJpYW50cw0KYXJlIHVzdWFsbHkgdXNlZCBmb3Igc29tZSBzcGVjaWFsaXplZC9pbnRlcm5h
bCB2ZXJzaW9uIG9mIGEgZnVuY3Rpb24NCndoZW4gd2Uga25vdyB0aGF0IHNvbWUgY29uZGl0aW9u
cyBhcmUgY29ycmVjdCAoZS5nLiwgbG9jayBpcyBhbHJlYWR5DQp0YWtlbiwgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdCkuIFdoaWNoIGZpdHMgaGVyZTogdHJhY2VfeHh4KCkgd2lsbA0KY2hlY2sgaWYg
dHJhY2Vwb2ludCBpcyBlbmFibGVkLCB3aGlsZSBfX3RyYWNlX3h4eCgpIHdpbGwgbm90IGNoZWNr
IGFuZA0KanVzdCBpbnZva2UgdGhlIHRyYWNlcG9pbnQ/IEl0J3Mgc2hvcnQsIGl0J3MgZGlzdGlu
Y3QsIGFuZCBpdCBzYXlzICJJDQprbm93IHdoYXQgSSBhbSBkb2luZyIuDQoNCj4gPiBpbnZva2Vf
dHJhY2VfZm9vKCkNCj4gPiBkaXNwYXRjaF90cmFjZV9mb28oKQ0KPiA+DQo+ID4gVGhhbmtzLA0K
PiA+DQo+ID4gTWF0aGlldQ0KPiA+DQo+ID4NCj4gPg0KPiA+IC0tDQo+ID4gTWF0aGlldSBEZXNu
b3llcnMNCj4gPiBFZmZpY2lPUyBJbmMuDQo+ID4gaHR0cHM6Ly93d3cuZWZmaWNpb3MuY29tDQo+
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
