Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDzxIrVf5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 39279430ED6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:17:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45B7F40500
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:17:40 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	by lists.linaro.org (Postfix) with ESMTPS id 9CB9A40175
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 17:03:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of rostedt@goodmis.org designates 216.40.44.10 as permitted sender) smtp.mailfrom=rostedt@goodmis.org;
	dmarc=pass (policy=none) header.from=goodmis.org
Received: from omf03.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id ACCFFC188B;
	Thu, 12 Mar 2026 17:03:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf03.hostedemail.com (Postfix) with ESMTPA id 1BAFA6000C;
	Thu, 12 Mar 2026 17:02:41 +0000 (UTC)
Date: Thu, 12 Mar 2026 13:02:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Message-ID: <20260312130255.6476e560@gandalf.local.home>
In-Reply-To: <CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
	<1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com>
	<20260312112354.3dd99e36@gandalf.local.home>
	<219d015d-076b-4c80-8f63-88569115fdad@efficios.com>
	<20260312114041.5193c729@gandalf.local.home>
	<1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com>
	<CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
	<CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: kfs6qijpbuferuuhtorb6b835ny66tin
X-Spam-Status: No, score=1.40
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18gNtqVqUvpV9OuqznTYLgQxysBeUr1V4g=
X-HE-Tag: 1773334961-101407
X-HE-Meta: U2FsdGVkX18nBBc/wjwt+Uq/UDhPM+TvyqJ3PzJ7XTdg8zJwcAeVzhmYzxHLf7pqvroMwwz3w+ZMve24FXDlwN4Al9l18e+sIMsly59QHs1WIGUGFWD+n9vC0YFBju5YF4U2cW8usaKA9ACod/DJfkWwChqILC7YI5fjo0jn+MDRzWgSUtcRWc+1ACqufST8GE1+cVaguSIGVLtHO49AgMgvbvjSqwoHR4+HUaDb14GsztIWWkzSI6t3CvJZWLJ62JKH4l1NZ0cseEdgq33l48qG8hnnyAiEMhQWmONsALjOWujHAfplawqsGy97HetKzPQbnSWVIVPTZt4F/YmoVmEIzpjR6X9B
X-Spamd-Bar: -
X-MailFrom: rostedt@goodmis.org
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 3GQN5UEDHJYQQIS2NDEX4QOKFSDKJXDE
X-Message-ID-Hash: 3GQN5UEDHJYQQIS2NDEX4QOKFSDKJXDE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:08 +0000
CC: Vineeth Remanan Pillai <vineeth@bitbyteword.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J
 . Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org,
  Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GQN5UEDHJYQQIS2NDEX4QOKFSDKJXDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[936];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[goodmis.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_GT_50(0.00)[72];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[bitbyteword.org,efficios.com,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,gandalf.local.home:mid,linaro.org:email]
X-Rspamd-Queue-Id: 39279430ED6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 09:54:29 -0700
Andrii Nakryiko <andrii.nakryiko@gmail.com> wrote:

> > > emit_trace_foo()
> > > __trace_foo()  
> 
> this seems like the best approach, IMO. double-underscored variants
> are usually used for some specialized/internal version of a function
> when we know that some conditions are correct (e.g., lock is already
> taken, or something like that). Which fits here: trace_xxx() will
> check if tracepoint is enabled, while __trace_xxx() will not check and
> just invoke the tracepoint? It's short, it's distinct, and it says "I
> know what I am doing".

Honestly, I consider double underscore as internal only and not something
anyone but the subsystem maintainers use.

This, is a normal function where it's just saying: If you have it already
enabled, then you can use this. Thus, I don't think it qualifies as a "you
know what you are doing".

Perhaps: call_trace_foo() ?

-- Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
