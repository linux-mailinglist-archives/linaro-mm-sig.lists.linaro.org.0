Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBtdAQVh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A1221431184
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:23:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C10D64046B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:23:15 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	by lists.linaro.org (Postfix) with ESMTPS id 432343F762
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 16:00:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of rostedt@goodmis.org designates 216.40.44.10 as permitted sender) smtp.mailfrom=rostedt@goodmis.org;
	dmarc=pass (policy=none) header.from=goodmis.org
Received: from omf14.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 999B0B7E13;
	Tue, 17 Mar 2026 16:00:51 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf14.hostedemail.com (Postfix) with ESMTPA id D0DF733;
	Tue, 17 Mar 2026 16:00:23 +0000 (UTC)
Date: Tue, 17 Mar 2026 12:00:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Message-ID: <20260317120049.6a60fa88@gandalf.local.home>
In-Reply-To: <CAO7JXPgHYZ9zF1HFahb2447X85YRZCQQBHB6ihOwKSDtiZi8kQ@mail.gmail.com>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
	<1e3c2830-765e-4271-89f7-0b6784b37597@efficios.com>
	<20260312112354.3dd99e36@gandalf.local.home>
	<219d015d-076b-4c80-8f63-88569115fdad@efficios.com>
	<20260312114041.5193c729@gandalf.local.home>
	<1becdbce-2c01-468a-bbab-42b5dea9fdf8@efficios.com>
	<CAO7JXPjnnruhM5oC6xMgnYaQ9efzYFqMCFiJLNM3HCQ+ZeCiJw@mail.gmail.com>
	<CAEf4BzbnfyhCqp0ne=2gRnVxp-mdGmuZwDeFRyhRYH+eDcz2-w@mail.gmail.com>
	<20260312130255.6476e560@gandalf.local.home>
	<CAO7JXPgHYZ9zF1HFahb2447X85YRZCQQBHB6ihOwKSDtiZi8kQ@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: eiowgk7zro9iwz8nfcjutbggq8cc8mcu
X-Spam-Status: No, score=1.40
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/EZ/m41FERFj32TQCYYTyPgc7E7WqasUA=
X-HE-Tag: 1773763223-363035
X-HE-Meta: U2FsdGVkX1+o+fNh+z7n3E+PiUwqBZ68nGRwauLM+oVgtgpFs5MonLd3fqHB3rXD6BFYZexukj4pxl1VM45GwWde/4JCtp52s0VQK6pZ4Xqa4tvZvLsT4iKLFRi+KAPOR9ciwGsqu0KypbHl9hRVpw7ii/Socjjk14+RdTNwtL/9W3CF6CygSSKoXB/8hsfV+wEeLIu0+Vu7k1X1TT489JEuNfPyBVCGV+jWtTwa1GJMzmbQZEKNLjPpFlUNh0lxNaKm6XtoF736vhCLAK8SYy2ZwNIf/KDqLxnTevPHb/LrRG7US/kzn6HxPRPvbJNoIgt7v+iuU8ZuIBjndA9wdY4FVl8DtE3i2S6cBnN1WxdJr/SxTYBW2cUmiC+3UkuX
X-Spamd-Bar: -
X-MailFrom: rostedt@goodmis.org
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: WOE7VUHHPCE7WZUYNCIUJLWIF554GQFA
X-Message-ID-Hash: WOE7VUHHPCE7WZUYNCIUJLWIF554GQFA
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:56 +0000
CC: Andrii Nakryiko <andrii.nakryiko@gmail.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wys
 ocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri
  Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/15] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WOE7VUHHPCE7WZUYNCIUJLWIF554GQFA/>
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
	DATE_IN_PAST(1.00)[817];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[goodmis.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,efficios.com,infradead.org,ilvokhin.com,kernel.org,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_GT_50(0.00)[72];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,gandalf.local.home:mid,bitbyteword.org:email]
X-Rspamd-Queue-Id: A1221431184
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 10:02:32 -0400
Vineeth Remanan Pillai <vineeth@bitbyteword.org> wrote:

> >
> > Perhaps: call_trace_foo() ?
> >  
> call_trace_foo has one collision with the tracepoint
> sched_update_nr_running and a function
> call_trace_sched_update_nr_running. I had considered this and later
> moved to trace_invoke_foo() because of the collision. But I can rename
> call_trace_sched_update_nr_running to something else if call_trace_foo
> is the general consensus.

OK, then lets go with: trace_call__foo()

The double underscore should prevent any name collisions.

Does anyone have an objections?

-- Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
