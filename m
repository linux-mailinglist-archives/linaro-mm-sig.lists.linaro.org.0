Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMYSOgX84GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB2410502
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1388A4068F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:00 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id A776C3F7E1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 01:20:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com
X-AuditID: a67dfc5b-c2dff70000001609-66-6915326a5ba4
Date: Thu, 13 Nov 2025 10:20:36 +0900
From: Byungchul Park <byungchul@sk.com>
To: Boqun Feng <boqun.feng@gmail.com>
Message-ID: <20251113012036.GA75428@system.software.com>
References: <20251002081247.51255-37-byungchul@sk.com>
 <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
 <aN62F8t493R7UmCT@tardis.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aN62F8t493R7UmCT@tardis.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02SV0yTYRSG/f7vX63W/FaQT4g3VaMhOCCOk2jUy+9GJRq3iTbyB6qslKE4
	wRUoQwyJSAVFNqXYBEWGRqQiI0JEBa2IAQeNiFRkFBVtpCrRuyfvec+Tc3FErC7nvEVdeLSs
	D9eGanglqxyckbfkYICnbnlnzzxIPHcKunvec/DzSpUAzS9Os9B+owxBz1gigvGJKxhs7XUY
	zLcSGMjsT2Bh4NIQD09aBxCcybfwUBXfK8BoxxsGzCl2DM9qs3l41XZBgMIXTxh402vj4GZb
	KwZnmg+0X0zlwJbeh6DckcdDhsOOYMBZhKFo7LMApdeKEVTWnUMwXOBk4fyIi4Om1PsMFI46
	MFjsDzC8TRsUILHBieFs90rIGfWH0TITv2ExNV81I1r46BNPC5K+M7TG+FqguRUx9GaJL82/
	28/QClMST69PfMC0+/ldnjZfnmBpXY5ZoK9c7zD90tfF0pTzFQztspdzgZ67lWuD5FBdrKxf
	tm6/MiTp40Mc+VZzJLm4jotHmd4GpBCJtILcSWjkp/hnqQm5mZUWksqJbtbNvLSI2GzfsAGJ
	osdkXmDaaUBKEUsWgdw2JHLuzmxpL7lYk/J7VyUBGXRUIXdJLaUj0jDy9e9gFmnJev9biiVf
	YnP1M24plnxIsUt0o0LyIx2Gfe6GpzSf3L/dxLg1ROoQSXbeU+HPnXNJfYmNTUeS8T+r8T+r
	8Z81F2ETUuvCY8O0utAVS0PiwnVHlh6ICKtAk09UdOLHnmo03L7ViiQRaWaoPmR56NScNjYq
	LsyKiIg1HqrKHZORKkgbd1TWR+zTx4TKUVbkI7IaL1WA83CQWgrWRsuHZDlS1k9NGVHhHY9C
	jpWx2Y1xyS8dGZuMQ67MktqaEwcWJBy/Y7m3eqbQcmtMjCmpBovf2Mb6j0dHUgcV/tvzneZA
	r/FZmb3ln7oeVA/0NQ7POcV26tW7GppXP1Y8nW89uY2Mrwn225F8YdrnBVtG2qw5dk3GkGl2
	xrb6zYG29VkbV+VOR80bjsnUy65ho0K0/r5YH6X9BeGhytRAAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG/Z//OWfH1eC0LE9KVJOIpItGwgtZWAT+kbSgD1ZYbulBV9Nk
	S8nAsouia94wsualm5dcK8GalzAMu6ioqRU5zPBSSmbOLnNdliMnRX57eJ7n9/B+eDksz2N8
	OHXicVGbqNIoWCktjdhybv2RTUvUASPdEsjKOA0Dg+8ZmCmul0Bb31kaeu7eRjA4nYXgu7MY
	g7WnGYP5/hkKisbP0DBx6TMLvZ0TCM7drGHhcWk7A/XpQxKwvxqmwGwYw/DyQQkLb7ryJFDR
	10vB8JCVgXtdnRgcub7QU5DDgDV/FMEd2w0WCm1jCCYclRgqp6ckUH21CoGlOQPB13IHDZnf
	XAy05jyioMJuw1Az9hjDSO7k7NlPHBjODwRBqT0Q7LdNbMhaYi4zI1LR8Ykl5dm/KNJofCsh
	12qTyb1b/uRm0zhFak3ZLLnu/IDJwOsmlrRddtKkudQsIW9c7zD5MtpPE0NmLUX6x+4we5Ye
	kAbHihp1iqjduE0pjc/++BQnjShOXKhqZtJRkY8eeXICv1mYqTYht6b51YLFOUC7NcuvEazW
	n1iPOM5r1i837dMjKYf5GolQp89i3J3FfJRQ0GiYY2U8CJO2euQuyfl8JDz59uNvsEhov/J+
	bhTz/oLVNU65RzHvK1S5OLf05NcJr/TR7sYS3k94VNdK5SOZcR5snAcb/8PXEDYhL3ViSoJK
	rQnaoDsan5qoPrEh5lhCLZp9k8q03wUNyP4ytAXxHFIslBGbl1rOqFJ0qQktSOCwwktmiZy1
	ZLGq1JOi9li0Nlkj6lqQL0crvGVhkaJSzsepjotHRTFJ1P5LKc7TJx0F+xWVNdjP6jM9wnca
	WqcOyo1xJUERAQ0rdj891BUX8rBDVhjupx/0bo3qoF16Piw6bHuVR/frfdXLlasMab0LxJKD
	+3UvpiP9lqVTe7c+j7Ks7A3rqk8ZZbRXY8Y1ba4hZZPq1y7FqZBDeV/bT1uqo3aEJit3HS5x
	hq+86Oh7VqGgdfGqQH+s1an+AKTs6FwiAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 74R56BVH77WEHLKZ5K3OGGIXR2LNKAYF
X-Message-ID-Hash: 74R56BVH77WEHLKZ5K3OGGIXR2LNKAYF
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:34 +0000
CC: Guangbo Cui <2407018371@qq.com>, Liam.Howlett@oracle.com, amir73il@gmail.com, andi.shyti@kernel.org, andrii@kernel.org, bsegall@google.com, gregkh@linuxfoundation.org, linaro-mm-sig@lists.linaro.org, link@vivo.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, masahiroy@kernel.org, mathieu.desnoyers@efficios.com, matthew.brost@intel.com, max.byungchul.park@gmail.com, mcgrof@kernel.org, melissa.srw@gmail.com, mgorman@suse.de, mhocko@kernel.org, minchan@kernel.org, oleg@redhat.com, paulmck@kernel.org, penberg@kernel.org, peterz@infradead.org, petr.pavlu@suse.com, torvalds@linux-foundation.org, vincent.guittot@linaro.org, will@kernel.org, yeoreum.yun@arm.com, ysk@kzalloc.com, rust-for-linux@vger.kernel.org, ojeda@kernel.org, gary@garyguo.net, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, dakr@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com, kernel_team@skhynix.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: bindings: add `rust_helper_wait_for_completion` helper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74R56BVH77WEHLKZ5K3OGGIXR2LNKAYF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3709];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[sk.com];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[qq.com,oracle.com,gmail.com,kernel.org,google.com,linuxfoundation.org,lists.linaro.org,vivo.com,vger.kernel.org,arm.com,efficios.com,intel.com,suse.de,redhat.com,infradead.org,suse.com,linux-foundation.org,linaro.org,kzalloc.com,garyguo.net,protonmail.com,skhynix.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qq.com:email,system.software.com:mid]
X-Rspamd-Queue-Id: F0DB2410502
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Oct 02, 2025 at 10:27:51AM -0700, Boqun Feng wrote:
> On Thu, Oct 02, 2025 at 10:06:17AM +0000, Guangbo Cui wrote:
> > > -extern void wait_for_completion(struct completion *);
> > > -extern void wait_for_completion_io(struct completion *);
> > > -extern int wait_for_completion_interruptible(struct completion *x);
> > > -extern int wait_for_completion_killable(struct completion *x);
> > > -extern int wait_for_completion_state(struct completion *x, unsigned int state);
> > > -extern unsigned long wait_for_completion_timeout(struct completion *x,
> > > +extern void __wait_for_completion(struct completion *);
> > > +extern void __wait_for_completion_io(struct completion *);
> > > +extern int __wait_for_completion_interruptible(struct completion *x);
> > > +extern int __wait_for_completion_killable(struct completion *x);
> > > +extern int __wait_for_completion_state(struct completion *x, unsigned int state);
> > > +extern unsigned long __wait_for_completion_timeout(struct completion *x,
> > >                                                unsigned long timeout);
> > > -extern unsigned long wait_for_completion_io_timeout(struct completion *x,
> > > +extern unsigned long __wait_for_completion_io_timeout(struct completion *x,
> > >                                                 unsigned long timeout);
> > > -extern long wait_for_completion_interruptible_timeout(
> > > +extern long __wait_for_completion_interruptible_timeout(
> > >     struct completion *x, unsigned long timeout);
> > > -extern long wait_for_completion_killable_timeout(
> > > +extern long __wait_for_completion_killable_timeout(
> > >     struct completion *x, unsigned long timeout);
> > >  extern bool try_wait_for_completion(struct completion *x);
> > >  extern bool completion_done(struct completion *x);
> > > @@ -139,4 +134,79 @@ extern void complete(struct completion *);
> > >  extern void complete_on_current_cpu(struct completion *x);
> > >  extern void complete_all(struct completion *);
> > >
> > > +#define wait_for_completion(x)                                             \
> > > +({                                                                 \
> > > +   sdt_might_sleep_start_timeout(NULL, -1L);                       \
> > > +   __wait_for_completion(x);                                       \
> > > +   sdt_might_sleep_end();                                          \
> > > +})
> >
> > The DEPT patch series changed `wait_for_completion` into a macro.
> > Because bindgen cannot handle function-like macros, this caused
> > Rust build errors. Add a helper function to fix it.
> >
> > ```
> > error[E0425]: cannot find function `wait_for_completion` in crate `bindings`
> >      --> rust/kernel/sync/completion.rs:110:28
> >       |
> >   110 |         unsafe { bindings::wait_for_completion(self.as_raw()) };
> >       |                            ^^^^^^^^^^^^^^^^^^^ help: a function with a similar name exists: `__wait_for_completion`
> >       |
> >      ::: /root/linux/rust/bindings/bindings_generated.rs:33440:5
> >       |
> > 33440 |     pub fn __wait_for_completion(arg1: *mut completion);
> >       |     ---------------------------------------------------- similarly named function `__wait_for_completion` defined here
> >
> > error: aborting due to 1 previous error
> >
> > For more information about this error, try `rustc --explain E0425`.
> > ```
> >
> 
> I think Danilo already made it clear, please fold this the existing
> patch. Moreover, since this patchset doesn't adjust init_completion()
> from the Rust side, the result is Rust code will also use the same dept
> key for completion, which has to be fixed if dept wants to be in-tree.

Thank you for informing that.  I will take a look on it.

	Byungchul
> 
> Regards,
> Boqun
> 
> > Signed-off-by: Guangbo Cui <2407018371@qq.com>
> > ---
> >  rust/helpers/completion.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/rust/helpers/completion.c b/rust/helpers/completion.c
> > index b2443262a2ae..5bae5e749def 100644
> > --- a/rust/helpers/completion.c
> > +++ b/rust/helpers/completion.c
> > @@ -6,3 +6,8 @@ void rust_helper_init_completion(struct completion *x)
> >  {
> >       init_completion(x);
> >  }
> > +
> > +void rust_helper_wait_for_completion(struct completion *x)
> > +{
> > +     wait_for_completion(x);
> > +}
> > --
> > 2.43.0
> >
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
