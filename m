Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ll9Ahhg5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B0737430FF2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:19:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF38F3F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:19:18 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 12A463F66B
	for <linaro-mm-sig@lists.linaro.org>; Sat, 14 Mar 2026 00:24:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=i0nggihj;
	spf=pass (lists.linaro.org: domain of kbusch@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B71A408E8;
	Sat, 14 Mar 2026 00:24:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 088E7C19421;
	Sat, 14 Mar 2026 00:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773447856;
	bh=WQRXpjIwf6KYkSpJNf4xnZTekqBOFUxWV+yK0mOoxb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i0nggihjXmXTKML8sut6lB5srcFWHmMKN3tSb0vnbiKDcMNVltZU2CmPxcxFrG3o3
	 nQrXA1wQ5YuTbmhgcTPNORS+379TzqDGm/7lSrQ1+WOrB6YJhRCIjKA7zUUcBgPch0
	 EYChM4p2xmMbNvogwcdaYFHJ9nHAZ56sOZLrj4G67jwJtQWWuJzeM6LK+rXxZtPvPL
	 7hsCy1/fez24lkAmdr6y8xZG7yqBOpidyJ0h37yL3W7fcEPRQk675mEsDmHjbA8Xn+
	 hN93oY8bX37rGdXAEkgAe3QI7f5zrI2DHLm42gIk1V7HmETARtzUHgwH52MHcPBfBz
	 VF6ZMYEbGWSgg==
Date: Fri, 13 Mar 2026 18:24:12 -0600
From: Keith Busch <kbusch@kernel.org>
To: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Message-ID: <abSqrJ1J59RQC47U@kbusch-mbp>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <20260312150523.2054552-2-vineeth@bitbyteword.org>
 <20260312111255.7925b4e2@gandalf.local.home>
 <CAO7JXPhg-Etspj9YahZrq8cmZ2K6AGWDrMnHO+oD96P_SmOLBw@mail.gmail.com>
 <20260312155326.GB1282955@noisy.programming.kicks-ass.net>
 <CAO7JXPiu8-LE_gG001_GQLoGVYakPdzmH2SXLqfzJjEUxbn1Rw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO7JXPiu8-LE_gG001_GQLoGVYakPdzmH2SXLqfzJjEUxbn1Rw@mail.gmail.com>
X-Spamd-Bar: ---
X-MailFrom: kbusch@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3ADBKX2LE3NLL2OTZQZWGO2OPFPEKAVM
X-Message-ID-Hash: 3ADBKX2LE3NLL2OTZQZWGO2OPFPEKAVM
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:20 +0000
CC: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <
 rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Ko
 sina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/15] tracepoint: Add trace_invoke_##name() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ADBKX2LE3NLL2OTZQZWGO2OPFPEKAVM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[904];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	RCPT_COUNT_GT_50(0.00)[72];
	FROM_NEQ_ENVFROM(0.00)[kbusch@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[infradead.org,goodmis.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.805];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B0737430FF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTI6MDU6MzdQTSAtMDQwMCwgVmluZWV0aCBSZW1hbmFu
IFBpbGxhaSB3cm90ZToNCj4gT24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTE6NTPigK9BTSBQZXRl
ciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+IHdyb3RlOg0KPiA+DQo+ID4gVGhhdCBz
ZWVtcyBsaWtlIGFuIHVucmVhc29uYWJsZSB3YXN0ZSBvZiBlbmVyZ3kuIFlvdSBjb3VsZCd2ZSBo
YWQgY2xhdWRlDQo+ID4gd3JpdGUgYSBDb2NjaW5lbGxlIHNjcmlwdCBmb3IgeW91IGFuZCBzYXZl
ZCBhIHRvbiBvZiB0b2tlbnMuDQo+IA0KPiBZZWFoIHRydWUsIFN0ZXZlIGFsc28gbWVudGlvbmVk
IHRoaXMgdG8gbWUgb2ZmbGluZS4gSGF2ZW4ndCB1c2VkDQo+IENvY2NpbmVsbGUgYmVmb3JlLCBi
dXQgbm93IEkga25vdyA6LSkNCg0KWysgQ2hyaXMgTWFzb25dDQoNCkF0IHRoZSByaXNrIG9mIGNy
ZWF0aW5nIGEgZGlzdHJhY3Rpb24uLi4NCg0KVGhpcyBkaXNjdXNzaW9uIGdvdCBtZSB0aGlua2lu
ZyB0aGUgcmlnaHQgc2tpbGwgbG9hZGVkIHNob3VsZCBoYXZlIHRoZQ0KQUkgaW1wbGljaXRseSB1
c2UgY29jY2luZWxsZSB0byBnZW5lcmF0ZSB0aGUgcGF0Y2hzZXQgcmF0aGVyIHRoYW4gZG8gaXQN
CmJ5IGhhbmQuIFlvdSBjb3VsZCBwcm9tcHQgd2l0aCBzaW1wbGUgbGFuZ3VhZ2UgZm9yIGEgcGF0
dGVybg0Kc3Vic3RpdHV0aW9uIHJhdGhlciB0aGFuIGV4cGxpY2l0bHkgcmVxdWVzdCBjb2NjaW5l
bGxlLCBhbmQgaXQgc2hvdWxkDQpnZW5lcmF0ZSBhIHBhdGNoIHNldCB1c2luZyBhIHNjcmlwdCBy
YXRoZXIgdGhhbiBzcGVuZGluZyB0b2tlbnMgb24gZG9pbmcNCml0ICJieSBoYW5kIi4NCg0KSSBz
ZW50IHN1Y2ggYSAic2tpbGwiIHRvIENocmlzJyBrZXJuZWwgInJldmlldy1wcm9tcHRzIjoNCg0K
ICBodHRwczovL2dpdGh1Yi5jb20vbWFzb25jbC9yZXZpZXctcHJvbXB0cy9wdWxsLzM1DQoNCkkg
dXNlZCBwYXRjaCBvbmUgZnJvbSB0aGlzIHNlcmllcyBhcyB0aGUgc3RhcnRpbmcgcG9pbnQgYW5k
IGxldCB0aGUgQUkNCmZpZ3VyZSB0aGUgcmVzdCBvdXQuIFRoZSByZXN1bHQgYWN0dWFsbHkgZm91
bmQgYWRkaXRpb25hbCBwYXR0ZXJucyB0aGF0DQpjb3VsZCB0YWtlIGFkdmFudGFnZSBvZiB0aGUg
b3B0aW1pc2F0aW9uIHRoYXQgdGhpcyBzZXJpZXMgZGlkIG5vdA0KaW5jbHVkZS4gVGhlIHJlc3Vs
dGluZyBrZXJuZWwgdHJlZSB0aGF0IHRoZSBhYm92ZSBnaXRodWIgcHVsbCByZXF1ZXN0DQpyZWZl
cmVuY2VzIGNvc3QgMi44ayB0b2tlbnMgdG8gY3JlYXRlIHdpdGggdGhlIHNraWxsLg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
