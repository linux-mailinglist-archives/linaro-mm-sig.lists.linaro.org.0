Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EiNFpnhsmmWQgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 16:54:01 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD27274F3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 16:54:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A05003F700
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2026 15:53:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	by lists.linaro.org (Postfix) with ESMTPS id 199353F700
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 15:53:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=desiato.20200630 header.b=P6jfkVRh;
	spf=none (lists.linaro.org: domain of peterz@infradead.org has no SPF policy when checking 90.155.92.199) smtp.mailfrom=peterz@infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5pK/vbHjomF7ZCz8kPkvw2tTjUJzJ46B59krQRBArKA=; b=P6jfkVRhJlvjsFD7S+pYuzAuv4
	MLDDYDxGdAfivMXXxo/ZUVApw1nd+jENAw0Lyqc4uWfI7XnqjHOAqA7ttXYJsxG4TAasEr7BjpDWo
	aIeA1snKPi45aV1ULkpxeeIBktxDuhCSFmRpLsMt1+ttYrsG44v3EOWhuPyWXdpRzlHxyEOn74GDA
	Z1CGVzkjGPeaU2YAiJd8rj+ihgYeubYRKoTBEzXo+qEnQBbcOv9+Up7MVLIY/DcZTAGZThMyG8xOO
	o5W6SO+boLGEUOkS89Aq38o86dricntUVfJsA834gNk6HDFKQEuSPpArtEtoOedubfSWkO9Rzjeky
	ZIr57Svw==;
Received: from 2001-1c00-8d85-5700-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl ([2001:1c00:8d85:5700:266e:96ff:fe07:7dcc] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0iLn-00000001W9V-24Bg;
	Thu, 12 Mar 2026 15:53:27 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 6325030049C; Thu, 12 Mar 2026 16:53:26 +0100 (CET)
Date: Thu, 12 Mar 2026 16:53:26 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Message-ID: <20260312155326.GB1282955@noisy.programming.kicks-ass.net>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <20260312150523.2054552-2-vineeth@bitbyteword.org>
 <20260312111255.7925b4e2@gandalf.local.home>
 <CAO7JXPhg-Etspj9YahZrq8cmZ2K6AGWDrMnHO+oD96P_SmOLBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO7JXPhg-Etspj9YahZrq8cmZ2K6AGWDrMnHO+oD96P_SmOLBw@mail.gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: 4PJ7IUDTH6V2GKJS5VCUQ7PVJFAZPVMM
X-Message-ID-Hash: 4PJ7IUDTH6V2GKJS5VCUQ7PVJFAZPVMM
X-MailFrom: peterz@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Rostedt <rostedt@goodmis.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <vires
 h.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tisso
 ires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/15] tracepoint: Add trace_invoke_##name() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4PJ7IUDTH6V2GKJS5VCUQ7PVJFAZPVMM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[infradead.org:s=desiato.20200630];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	RCPT_COUNT_GT_50(0.00)[71];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[goodmis.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bitbyteword.org:email,goodmis.org:email,infradead.org:email,linaro.org:email,noisy.programming.kicks-ass.net:mid]
X-Rspamd-Queue-Id: DBD27274F3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTE6Mzk6MDZBTSAtMDQwMCwgVmluZWV0aCBSZW1hbmFu
IFBpbGxhaSB3cm90ZToNCj4gT24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTE6MTPigK9BTSBTdGV2
ZW4gUm9zdGVkdCA8cm9zdGVkdEBnb29kbWlzLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUaHUs
IDEyIE1hciAyMDI2IDExOjA0OjU2IC0wNDAwDQo+ID4gIlZpbmVldGggUGlsbGFpIChHb29nbGUp
IiA8dmluZWV0aEBiaXRieXRld29yZC5vcmc+IHdyb3RlOg0KPiA+DQo+ID4gPiBBZGQgdHJhY2Vf
aW52b2tlXyMjbmFtZSgpIGFzIGEgY29tcGFuaW9uIHRvIHRyYWNlXyMjbmFtZSgpLiAgV2hlbiBh
DQo+ID4gPiBjYWxsZXIgYWxyZWFkeSBndWFyZHMgYSB0cmFjZXBvaW50IHdpdGggYW4gZXhwbGlj
aXQgZW5hYmxlZCBjaGVjazoNCj4gPiA+DQo+ID4gPiAgIGlmICh0cmFjZV9mb29fZW5hYmxlZCgp
ICYmIGNvbmQpDQo+ID4gPiAgICAgICB0cmFjZV9mb28oYXJncyk7DQo+ID4gPg0KPiA+ID4gdHJh
Y2VfZm9vKCkgaW50ZXJuYWxseSByZXBlYXRzIHRoZSBzdGF0aWNfYnJhbmNoX3VubGlrZWx5KCkg
dGVzdCwgd2hpY2gNCj4gPiA+IHRoZSBjb21waWxlciBjYW5ub3QgZm9sZCBzaW5jZSBzdGF0aWMg
YnJhbmNoZXMgYXJlIHBhdGNoZWQgYmluYXJ5DQo+ID4gPiBpbnN0cnVjdGlvbnMuICBUaGlzIHJl
c3VsdHMgaW4gdHdvIHN0YXRpYy1icmFuY2ggZXZhbHVhdGlvbnMgZm9yIGV2ZXJ5DQo+ID4gPiBn
dWFyZGVkIGNhbGwgc2l0ZS4NCj4gPiA+DQo+ID4gPiB0cmFjZV9pbnZva2VfIyNuYW1lKCkgY2Fs
bHMgX19kb190cmFjZV8jI25hbWUoKSBkaXJlY3RseSwgc2tpcHBpbmcgdGhlDQo+ID4gPiByZWR1
bmRhbnQgc3RhdGljLWJyYW5jaCByZS1jaGVjay4gIFRoaXMgYXZvaWRzIGxlYWtpbmcgdGhlIGlu
dGVybmFsDQo+ID4gPiBfX2RvX3RyYWNlXyMjbmFtZSgpIHN5bWJvbCBpbnRvIGNhbGwgc2l0ZXMg
d2hpbGUgc3RpbGwgZWxpbWluYXRpbmcgdGhlDQo+ID4gPiBkb3VibGUgZXZhbHVhdGlvbjoNCj4g
PiA+DQo+ID4gPiAgIGlmICh0cmFjZV9mb29fZW5hYmxlZCgpICYmIGNvbmQpDQo+ID4gPiAgICAg
ICB0cmFjZV9pbnZva2VfZm9vKGFyZ3MpOyAgIC8qIGNhbGxzIF9fZG9fdHJhY2VfZm9vKCkgZGly
ZWN0bHkgKi8NCj4gPiA+DQo+ID4gPiBUaHJlZSBsb2NhdGlvbnMgYXJlIHVwZGF0ZWQ6DQo+ID4g
PiAtIF9fREVDTEFSRV9UUkFDRTogaW52b2tlIGZvcm0gb21pdHMgc3RhdGljX2JyYW5jaF91bmxp
a2VseSwgcmV0YWlucw0KPiA+ID4gICB0aGUgTE9DS0RFUCBSQ1Utd2F0Y2hpbmcgYXNzZXJ0aW9u
Lg0KPiA+ID4gLSBfX0RFQ0xBUkVfVFJBQ0VfU1lTQ0FMTDogc2FtZSwgcGx1cyByZXRhaW5zIG1p
Z2h0X2ZhdWx0KCkuDQo+ID4gPiAtICFUUkFDRVBPSU5UU19FTkFCTEVEIHN0dWI6IGVtcHR5IG5v
LW9wIHNvIGNhbGxlcnMgY29tcGlsZSBjbGVhbmx5DQo+ID4gPiAgIHdoZW4gdHJhY2Vwb2ludHMg
YXJlIGNvbXBpbGVkIG91dC4NCj4gPiA+DQo+ID4gPiBTdWdnZXN0ZWQtYnk6IFN0ZXZlbiBSb3N0
ZWR0IDxyb3N0ZWR0QGdvb2RtaXMub3JnPg0KPiA+ID4gU3VnZ2VzdGVkLWJ5OiBQZXRlciBaaWps
c3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5lZXRo
IFBpbGxhaSAoR29vZ2xlKSA8dmluZWV0aEBiaXRieXRld29yZC5vcmc+DQo+ID4gPiBBc3Npc3Rl
ZC1ieTogQ2xhdWRlOmNsYXVkZS1zb25uZXQtNC02DQo+ID4NCj4gPiBJJ20gZ3Vlc3NpbmcgQ2xh
dWRlIGhlbHBlZCB3aXRoIHRoZSBvdGhlciBwYXRjaGVzLiBEaWQgaXQgcmVhbGx5IGhlbHAgd2l0
aCB0aGlzIG9uZT8NCj4gPg0KPiANCj4gQ2xhdWRlIHdyb3RlIGFuZCBidWlsZCB0ZXN0ZWQgdGhl
IHdob2xlIHNlcmllcyBiYXNlZCBvbiBteSBndWlkYW5jZQ0KPiBhbmQgcHJvbXB0IDotKS4gSSB2
ZXJpZmllZCB0aGUgc2VyaWVzIGJlZm9yZSBzZW5kaW5nIGl0IG91dCwgYnV0DQo+IGNsYXVkZSBk
aWQgdGhlIGluaXRpYWwgd29yay4NCg0KVGhhdCBzZWVtcyBsaWtlIGFuIHVucmVhc29uYWJsZSB3
YXN0ZSBvZiBlbmVyZ3kuIFlvdSBjb3VsZCd2ZSBoYWQgY2xhdWRlDQp3cml0ZSBhIENvY2NpbmVs
bGUgc2NyaXB0IGZvciB5b3UgYW5kIHNhdmVkIGEgdG9uIG9mIHRva2Vucy4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
